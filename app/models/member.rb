class Member < ActiveRecord::Base
  
  #has_one :user, :dependent => :destroy
  
  validates_presence_of :first_name, :last_name, :position
  
  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large =>   "400x400>" }
  
  # Other methods
  def full_name
    "#{last_name}, #{first_name}"
  end
  
  MAJOR = [ ["Biological Science", 1], ["Business", 2], ["Chemical Engineering", 3], ["Chemistry", 4], ["CIT--Undeclared", 5], ["Civil Engineering", 6], ["Computer Science", 7], ["Electrical & Computer Engineering", 7], ["Information Systems Management", 8], ["Information Systems", 9], ["Material Science Engineering", 10], ["Mathematical Science", 11], ["Mechanical Engineering", 12], ["Physics", 13], ["Policy & Management", 14], ["Other", 15] ]
  
  CLASS_STANDING = [ ["Freshman", 1], ["Sophomore", 2], ["Junior", 3], ["Senior", 4], ["Grad", 5] ]
  
  
  #def user_attributes=(user_attributes)
    #user_attributes.each do |attributes|
      #  users.build(attributes)
    #end
  #end
  
  def primary_major
    return "Biological Science" if major==1
  else
    return "Other"
  end
  

end
