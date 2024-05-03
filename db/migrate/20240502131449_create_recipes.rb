class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name, null:false
      t.integer :category_id, null:false
      t.integer :kondate_id, null:false
      t.timestamps
    end
  end
end
