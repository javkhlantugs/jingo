class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_attached_file :avatar, styles: { medium: "400x400>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment_size :avatar, :in => 0.megabytes..2.megabytes

  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :events
  
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :phone, uniqueness: true, length: {minimum: 10, maximum: 10}, allow_blank: true
         validates :hometown, presence: true
         validates :zipcode, length: {minimum: 5, maximum: 5}, allow_blank: true
end
