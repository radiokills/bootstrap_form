class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.references :engine_type
      t.boolean :is_working
      t.text :description
      t.float :kilometers
      t.datetime :last_registration

      t.timestamps
    end
    add_index :cars, :engine_type_id
  end
end
