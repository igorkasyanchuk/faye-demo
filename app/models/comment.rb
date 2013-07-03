class Comment < ActiveRecord::Base
  attr_accessible :message

  scope :ordered, order("id asc")
end
