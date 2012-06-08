class Mission < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :users, :through => :user_missions
  has_many :user_missions
  has_many :events
end
