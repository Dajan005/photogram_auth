class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# Associations

  has_many :liked_photos, :through => :likes, :source => :photo
  has_many :photos
  has_many :comments
  has_many :likes

  # Validations

  validates :username, presence: true
  validates :username, uniqueness: true


end
