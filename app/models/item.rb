class Item < ActiveRecord::Base
  validates :name, presence: true
  validate :description, presence: true
end
