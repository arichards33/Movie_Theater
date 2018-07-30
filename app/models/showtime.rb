class Showtime < ApplicationRecord
  belongs_to :movie
  has_many :purchases

  def seats_remaining
    seats_sold = 0
    purchases.each do |sale|
      seats_sold += sale.tickets
    end
    return self.seats - seats_sold
  end
end
