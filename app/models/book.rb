class Book < ActiveRecord::Base
  validates :name, :presence => true
  acts_as_taggable_on :private_tags
end
