class AddPaperClipToApartments < ActiveRecord::Migration[5.0]
  def change
    add_attachment :apartments, :image
  end
end
