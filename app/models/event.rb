class Event < ActiveRecord::Base
  
  validates_presence_of :name, :location
  
  has_many :members
  
  named_scope :upcoming, :conditions => ["event_date > ?", Time.now]
  named_scope :past, :conditions => ["event_date < ?", Time.now]
  
end
