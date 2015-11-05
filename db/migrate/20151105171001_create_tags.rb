class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :article_id
      t.string :tag_text

      t.timestamps null: false
    end
  end
end
