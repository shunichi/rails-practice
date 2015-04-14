class User < ActiveRecord::Base
  serialize :auth_hash, JSON

  def self.create_by_github(auth)
    User.create!(github_id: auth[:uid],
                 name: auth[:info][:name],
                 email: auth[:info][:email],
                 image: auth[:info][:image],
                 auth_hash: auth)
  end
end
