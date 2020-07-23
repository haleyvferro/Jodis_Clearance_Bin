class Player < ApplicationRecord
    has_many :sales
    has_many :items, through: :sales

    
end
