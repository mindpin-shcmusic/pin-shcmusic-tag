class Book < ActiveRecord::Base
  include Tagging::TaggableMethods
  
  validates :name, :presence => true
end
