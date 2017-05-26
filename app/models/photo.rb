class Photo < ApplicationRecord

# Add validations to model
validates :user_id, :presence => true

# Add association helper methods

# Photo belongs to a user
belongs_to :user

# Photo has many comments
# has_many :comments, :class_name => "Comment", :foreign_key => "photo_id"
has_many :comments

# Photo have many likes
# has_many :likes, :class_name => "Like", :foreign_key => "photo_id"
has_many :likes

# Photos have many fans (through like, source:user)
has_many :fans, :through => :likes, :source => :user

end
