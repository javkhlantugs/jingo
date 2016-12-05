class Event < ApplicationRecord

has_attached_file :avatar, styles: { medium: "300x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates_attachment_size :avatar, :less_than => 5.megabytes

 extend TimeSplitter::Accessors
  split_accessor :date, date_format: "%D", time_format: "%I:%M%p"

belongs_to :user

end

