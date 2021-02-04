class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      #create attributes of doctors
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
