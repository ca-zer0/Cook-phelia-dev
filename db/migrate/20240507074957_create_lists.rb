class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :user
      t.references :ercipe
      t.text :memo
      t.timestamps
    end
  end
end
