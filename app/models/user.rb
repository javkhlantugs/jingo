class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :events
  
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :phone, uniqueness: true
         validates :hometown, presence: true
end
