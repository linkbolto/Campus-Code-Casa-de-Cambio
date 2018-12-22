class HomeController < ApplicationController
  def index
    if params[:filter]
      @transactions = Transaction.where(currency: params[:filter])
    else
      @transactions = Transaction.all
    end
  end
end