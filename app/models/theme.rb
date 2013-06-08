class Theme < ActiveRecord::Base
  attr_accessible :category, :color, :name, :category_id
    
  belongs_to :category
  belongs_to :user
  
  validates :user_id, presence: true
  #validates :category_id, presence: true
end
