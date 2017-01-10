class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.float :latitude
      t.float :longitude
      t.string :streetno
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :name
      t.string :phone
      t.string :contacthrs

      t.timestamps
    end
  end
end
