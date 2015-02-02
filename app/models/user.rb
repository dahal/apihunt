class User < ActiveRecord::Base
  extend Enumerize

  enumerize :status, in: { active: 1, inactive: 2, blocked: 3, deleted: 4 }, default: :inactive
  enumerize :role, in: { user: 1, moderator: 2, admin: 3 }, default: :user

  has_many :apis

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.github_profile_url = auth["extra"]["raw_info"]["html_url"]
      user.github_avatar = auth["extra"]["raw_info"]["avatar_url"]
    end
  end
end
