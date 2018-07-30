class Purchase < ApplicationRecord
  belongs_to :showtime

  #For testing purposes, not using real credit card numbers so this is commented out to test email functionality
  # validates :cc, presence: true, credit_card_number: true

end
