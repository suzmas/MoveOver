class Apartment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    "#{self.streetno}, #{self.street}, #{self.state}, #{self.zip}"
  end
end
