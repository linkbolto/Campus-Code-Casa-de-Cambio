class HomeController < ApplicationController
  def index
    case params[:filter]
    when nil
      @transactions = Transaction.where(created_at: Date.today.all_day)
    when 'all'
      @transactions = Transaction.all
    else
      @transactions = Transaction.where(currency: params[:filter])
    end
  end
end