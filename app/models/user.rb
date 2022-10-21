class User < ApplicationRecord
    has_many :spendings, dependent: :destroy
    has_many :categories, dependent: :destroy
    
    validates :name, presence: true, length: { maximum: 50 }

    end
