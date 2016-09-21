class User < ApplicationRecord
  devise :registerable, :rememberable, :trackable, :validatable, :omniauthable
  validates :nickname, uniqueness: true
   
end
