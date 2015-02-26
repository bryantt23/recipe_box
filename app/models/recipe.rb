class Recipe < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "400x400#" }
  #   #crops it

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # validates_attachment_content_type :image, :content_type => /^image\/(png|gif|jpeg)/
end
