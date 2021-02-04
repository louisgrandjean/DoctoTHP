class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      #create attributes of cities
      t.string :city
      t.timestamps
    end
  end
end
