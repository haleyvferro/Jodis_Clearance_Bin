class Sale < ApplicationRecord
    belongs_to :item
    belongs_to :player
end
