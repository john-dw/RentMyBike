class RemovePictureUrlFromBikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :bikes, :picture_url
  end
end
