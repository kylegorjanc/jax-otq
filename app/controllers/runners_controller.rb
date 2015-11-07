class RunnersController < ApplicationController

	def index
    @runners = Runner.all
  end

  def show
    @runner = Runner.find(params[:id])
  end

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save 
      redirect_to runner_path(@runner)
    else
      redirect_to new_runner_path
    end
  end

  def edit
    @runner = Runner.find(params[:id])
  end

  def update
    @runner = Runner.find(params[:id])
    @runner.update(runner_params)
    redirect_to @runner
  end

  def destroy
    @runner = Runner.find(params[:id])
    @runner.destroy
    redirect_to '/runners'
  end

  private

  def runner_params
    params.require(:runner).permit(:first_name, :last_name, :age, :profession, :website, :has_coach, :coach_name, :twitter_handle, :has_spouse, :has_chidren, :num_of_children, :is_qualified, :q_standard, :marathon_pr, :first_marathon_time, :avg_job_hrs, :peak_mileage_weekly)
  end
	
end
