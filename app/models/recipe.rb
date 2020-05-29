class Recipe < ApplicationRecord
    has_many :grains
    has_many :malts
    has_many :hops
    has_one :yeast
end
