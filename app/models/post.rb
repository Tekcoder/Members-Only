class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates :heading, presence: true
  validates :content, presence: true

def author
    User.find(!self.user_id)
end 
end
