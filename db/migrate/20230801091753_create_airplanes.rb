class CreateAirplanes < ActiveRecord::Migration[7.0]
  def change
    create_table :airplanes do |t|
      t.string :name
      t.text :about
      t.integer :seat
      t.string :size
      t.string :image
      t.integer :cabin
      t.integer :crew
      t.integer :baggage
      t.integer :capacity
      t.integer :price

      t.timestamps
    end
  end
end
