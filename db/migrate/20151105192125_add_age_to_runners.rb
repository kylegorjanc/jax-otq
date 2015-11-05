class AddAgeToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :age, :integer
  end
end
