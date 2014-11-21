class User < ActiveRecord::Base
  has_secure_password
  has_many :votes
  has_many :songs, :through => :votes

end
