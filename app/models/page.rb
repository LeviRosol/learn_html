class Page < ActiveRecord::Base
  belongs_to :user

  attr_accessible :user_id, :name, :body
end
