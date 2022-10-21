class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :spendings, dependent: :destroy
  has_many :catergories, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
