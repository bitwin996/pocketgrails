class Piece < ActiveRecord::Base
  attr_accessible :content, :name, :reference, :theme_id, :user_id , :photo  #, :photo_cache, :photo_file_name
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  
end
