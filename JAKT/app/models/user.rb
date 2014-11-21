class User < ActiveRecord::Base
  has_many :votes
  has_many :songs, :through => :votes

end
