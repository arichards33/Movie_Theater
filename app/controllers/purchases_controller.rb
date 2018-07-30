class PurchasesController < ApplicationController
  def index
  end

  def create

    @purchase = Purchase.new
    @purchase.name = params["name"]
    @purchase.email = params["email"]
    @purchase.date = params["date"]
    @purchase.showtime_id = params["showtime_id"]
    @purchase.cost = (params["tickets"].to_i*10)
    @purchase.tickets = params["tickets"]


    if @purchase.save
      RecieptMailer.with(purchase: @purchase).reciept_email.deliver_now
      redirect_to "/movies", notice: "Your Purchase Was Successful"
    else
      redirect_to '/movies', notice: @purchase.errors
    end
  end
end
