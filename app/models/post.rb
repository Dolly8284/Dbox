class Post < ApplicationRecord
	has_one_attached :avatar
	 # has_many_attached :images
	 # has_one_attached :image,  
	 #   :url => "/files/:basename.:extension",  
	 #   :path => "/var/htdocs/public/files/:basename.:extension" 
	  def filter(filter)
	    if filter
	      @posts = Posts.where(category: filter)
	    else
	      @posts = Posts.all
	  end
	end
end
