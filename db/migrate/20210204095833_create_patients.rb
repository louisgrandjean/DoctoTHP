class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
