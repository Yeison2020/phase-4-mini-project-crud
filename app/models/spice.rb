class Spice < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :image, presence: true
    validates :description, presence: true
    validates :notes, length: {minimum:250, maximum:500}
    validates :rating, length: {minimum:1, maximum:10}
   

    
end
