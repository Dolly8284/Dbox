class Post < ApplicationRecord
# validates_uniqueness_of :post_id, scope: :user_id
  has_one_attached :avatar, dependent: :destory  
  has_many :sharings
  belongs_to :user, optional: true
  
  def filter(filter)
    if filter
      @posts = Posts.where(category: filter)
    else
      @posts = Posts.all
    end
  end
end