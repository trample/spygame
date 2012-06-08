class User < ActiveRecord::Base
  attr_accessible :email, :password, :salt
  has_many :missions, :through => :user_missions
  has_many :user_missions
end
