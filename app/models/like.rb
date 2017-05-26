class Like < ApplicationRecord

# Add validations to model
validates :user_id, :presence => true, :uniqueness => { :scope => :photo_id }
validates :photo_id, :presence => true

# Add association helper methods

# Like belongs to a user
belongs_to :user

# Like belongs to a photo
belongs_to :photo

end
