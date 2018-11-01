class Book < ActiveRecord::Base
  attr_accessible :author, :name
  validates :author, presence: true
  validates :name, presence: true
end
