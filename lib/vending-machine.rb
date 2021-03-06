# coding: utf-8


class VendingMachine
  VALID_MONEYS = [10, 50, 100, 500, 1000]
  def initialize
    @total_amount = 0
  end

  def total_amount
    @total_amount
  end

  def insert money
    return money unless VALID_MONEYS.include? money
    @total_amount += money
    0 #正しいお金の場合
  end

  def refund
    charge = @total_amount
    @total_amount = 0
    charge
  end

end