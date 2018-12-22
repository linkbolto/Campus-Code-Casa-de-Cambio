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

    @total = 0.0
    @transactions.each do |t|
      @total += t.total_num
    end
  end
end