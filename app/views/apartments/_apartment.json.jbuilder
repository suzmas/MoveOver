json.extract! apartment, :id, :latitude, :longitude, :streetno, :street, :city, :state, :zip, :name, :phone, :contacthrs, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)