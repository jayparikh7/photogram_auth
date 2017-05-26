class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# Add validations to model
validates :username, :presence => true, :uniqueness => true

# Add association helper methods

# User has many Photos
has_many :photos

# User has many comments
has_many :comments

# User has many likes
has_many :likes

# User has many liked_photos (through likes, source: photo)
has_many :liked_photos, :through => :likes , :source => :photo

end
