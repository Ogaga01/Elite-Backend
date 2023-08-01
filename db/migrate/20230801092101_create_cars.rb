class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :about
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
