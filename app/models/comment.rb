class Comment < ApplicationRecord

# Add validations to model
# Each field must be filled out
validates :user_id, :presence => true
validates :photo_id, :presence => true
validates :body, :presence => true

# Add association helper methods

# Comment belongs to a User
# belongs_to :user, :class_name => "User", :foreign_id => "user_id"
belongs_to :user


# Comment belongs to a Photo
# belongs_to :photo, :class_name => "Photo", :foreign_id => "photo_id"
belongs_to :photo

end
