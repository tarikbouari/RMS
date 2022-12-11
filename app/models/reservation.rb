class Reservation < ApplicationRecord
    belongs_to :order, class_name: 'Order'
    belongs_to :table, class_name: 'Table'
end
