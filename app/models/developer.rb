class Developer < ApplicationRecord
  # ----> ASSOCIATIONS
  #has_many :events

  # ---> VALIDATIONS
  validates :name, :phone_number, presence: true, uniqueness: true
  validates :phone_number, length: { maximum: 12 }
  validate  :format_phone_number

  def format_phone_number
    #must have +1
    #strip any dashes or parenthesis
  end
end
