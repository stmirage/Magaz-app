class Item < ActiveRecord::Base
	validates :price, numericality: {greater_than: 0}
	validates :price, presence: true
	validates :name, presence: true
	#validates :real, presence: true
	validates :name, length: {minimum: 1, maximum: 500}
	validates :weight, numericality: {greater_than: 0}, allow_nil: true

	has_many :positions
	has_many :carts, through: :positions
	has_many :comments, as: :commentable 

end
