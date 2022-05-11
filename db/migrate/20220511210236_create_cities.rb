class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :weather
      t.string :description

      t.timestamps
    end
  end
end
