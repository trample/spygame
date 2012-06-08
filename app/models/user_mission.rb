class UserMission < ActiveRecord::Base
  attr_accessible :mission_id, :user_id
  belongs_to :user
  belongs_to :mission
end
