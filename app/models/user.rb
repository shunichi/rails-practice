class User < ActiveRecord::Base
  serialize :auth_hash, JSON
end
