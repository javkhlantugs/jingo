class Event < ApplicationRecord

 extend TimeSplitter::Accessors
  split_accessor :date, date_format: "%D", time_format: "%I:%M%p"

belongs_to :user

end
