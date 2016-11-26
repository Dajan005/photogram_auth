class Photo < ActiveRecord::Base

# Associations
  has_many :fans, :through => :likes, :source => :user
  has_many :comments
  has_many :likes

# Validations

  validates :user_id, :presence => true


  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

end
