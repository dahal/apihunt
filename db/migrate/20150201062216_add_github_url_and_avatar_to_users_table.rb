class AddGithubUrlAndAvatarToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :github_profile_url, :string
    add_column :users, :github_avatar, :string
  end
end
