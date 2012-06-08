class Event < ActiveRecord::Base
  attr_accessible :content, :mission_id, :sequence, :title
  belongs_to :mission
end
