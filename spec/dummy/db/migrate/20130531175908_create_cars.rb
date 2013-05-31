class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.integer :year
      t.datetime :last_service
      t.text :engine_type

      t.timestamps
    end
  end
end
