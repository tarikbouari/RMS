class FoodItem < ApplicationRecord
    belongs_to :menu, class_name: 'Menu'
    has_many :orders
end
