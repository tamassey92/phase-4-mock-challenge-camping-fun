class Signup < ApplicationRecord
  belongs_to :activity
  belongs_to :camper
  
  validates_inclusion_of :time, in: 0..23 
end
