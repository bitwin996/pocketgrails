class Piece < ActiveRecord::Base
  attr_accessible :content, :name, :reference, :theme_id, :user_id
end
