class Photo < ActiveRecord::Base

# Associations
  has_many :fans, :through => :likes, :source => :user
  has_many :comments


# Validations

  validates :user_id, :presence => true

end
