class Apartment < ApplicationRecord
  belongs_to :user

  resourcify
  
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, size: { in: 0..10.megabytes }

  geocoded_by :address
  after_validation :geocode

  def address
    streetno.to_s + ' ' + street.to_s + ', ' + city.to_s + ', ' + state.to_s + ', ' + zip.to_s
  end

end
