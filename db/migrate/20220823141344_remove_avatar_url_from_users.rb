class RemoveAvatarUrlFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :avatar_url
  end
end
