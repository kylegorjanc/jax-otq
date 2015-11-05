class AddImgUrlToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :img_url, :string
  end
end
