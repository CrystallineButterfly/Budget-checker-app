class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }

  def total_amount
    spendings.sum('amount')
  end
end
