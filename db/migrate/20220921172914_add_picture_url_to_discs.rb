class AddPictureUrlToDiscs < ActiveRecord::Migration[7.0]
  def change
    add_column :discs, :picture_url, :string, :default => "https://m.media-amazon.com/images/I/61+1Z62KXKL._AC_SX425_.jpg"
  end
end
