class Story < ActiveRecord::Base
  validates_presence_of :content, :title, :publisher
end
