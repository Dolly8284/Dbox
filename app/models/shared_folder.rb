class SharedFolder < ApplicationRecord
	attr_accessible :user_id, :shared_email, :shared_user_id,  :message,  :folder_id
    
  #this is for the owner(creator) of the assets 
    belongs_to :user
end
