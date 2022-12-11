class Order < ApplicationRecord
    belongs_to :customer, class_name: 'Customer'
    belongs_to :food_item, class_name: 'FoodItem'
    has_many :reservations, class_name: 'Reservation'
end
