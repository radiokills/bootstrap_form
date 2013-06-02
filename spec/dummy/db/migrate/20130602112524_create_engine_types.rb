class CreateEngineTypes < ActiveRecord::Migration
  def change
    create_table :engine_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
