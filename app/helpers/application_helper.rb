module ApplicationHelper
  def author
    User.find(self.user_id)
end 
end
