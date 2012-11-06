class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :calendar_id
      t.integer :seq
      t.string :label
      t.string :filename
      t.string :content

      t.timestamps
    end
  end
end
