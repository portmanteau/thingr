class Item < ActiveRecord::Base
  validates :image, presence: true
  validates :name, presence: true
  validates :value_dollars, presence: true
  validates :value_sentimental, presence: true
end
