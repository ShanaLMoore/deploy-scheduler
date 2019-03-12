class Event < ApplicationRecord
  # ----> ASSOCIATIONS
  belongs_to :developer

  has_many :notifications

end
