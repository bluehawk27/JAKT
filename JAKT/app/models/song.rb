class Song < ActiveRecord::Base
  has_many :votes
  has_many :users, :through => :votes
end
