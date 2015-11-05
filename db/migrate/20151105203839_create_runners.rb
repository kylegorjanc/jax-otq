class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :profession
      t.string :website
      t.boolean :has_coach
      t.string :coach_name
      t.string :twitter_handle
      t.boolean :has_spouse
      t.boolean :has_children
      t.integer :num_of_children
      t.boolean :is_qualified
      t.string :q_standard
      t.string :marathon_pr
      t.string :first_marathon_time
      t.integer :avg_job_hrs
      t.text :bio
      t.integer :peak_mileage_wkly

      t.timestamps null: false
    end
  end
end
