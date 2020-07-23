class Item < ApplicationRecord
    has_many :sales
    has_many :players, through: :sales

    validates :name, presence: true, format: {with: /[a-zA-Z]/}, uniqueness: true
    validates :description, presence: true
    validates :img_url, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 1} 
end
