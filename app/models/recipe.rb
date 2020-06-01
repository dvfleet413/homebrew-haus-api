class Recipe < ApplicationRecord
    has_many :grains
    has_many :malts
    has_many :hops
    has_one :yeast
    accepts_nested_attributes_for :grains, :malts, :hops, :yeast
    has_many :favorites
    has_many :users, through: :favorites
end
