class Sharing < ApplicationRecord
  # validates :sharing presence: true
  belongs_to :post   
end
