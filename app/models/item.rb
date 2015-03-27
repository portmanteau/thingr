class Item < ActiveRecord::Base
  validates :name, presence: true
  validate :description, presence: true
  # validates :image, presence: true
  # validates :value_dollars, presence: true
  # validates :value_sentimental, presence: true
end
