class CreateSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :specialties do |t|
      #create attributes of specialties
      t.string :specialty
      t.timestamps
    end
  end
end
