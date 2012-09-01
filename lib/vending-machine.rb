# coding: utf-8

class VendingMachine
  def initialize
    @total_amount = 0
  end

  def total_amount
    @total_amount
  end

  def insert money
    if money == 1
      return money
    end
    @total_amount += money
  end

  def refund
    total_amount = @total_amount
    @total_amount = 0
    total_amount
  end

end