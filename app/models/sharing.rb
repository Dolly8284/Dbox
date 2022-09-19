class Sharing < ApplicationRecord

  # validates_uniqueness_of :sharing, scope: :post_id
  belongs_to :post   
end
