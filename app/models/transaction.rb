class Transaction < ApplicationRecord

  validates :amount, :quotation, :currency, :transaction_type, presence: true
  
  def currency_pt
    currency == 'dollar' ? 'Dólar' : 'Real'
  end

  def transaction_type_pt
    transaction_type == 'buy' ? 'Compra' : 'Venda'
  end

  def total
    value = amount
    value /= quotation if currency == 'real'
    value *= -1 if transaction_type == 'sell'
    "$  #{'%.2f' % value}"
  end

  def date
    created_at.strftime('%d/%m/%Y')
  end
end
