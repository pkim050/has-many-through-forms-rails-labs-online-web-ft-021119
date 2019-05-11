class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(attribute)
    self.user = User.find_or_create_by(username: attribute["username"]) if !attribute["username"].empty?
  end
end
