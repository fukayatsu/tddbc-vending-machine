# coding: utf-8


class VendingMachine
  VALID_MANEYS = [10, 50, 100, 500, 1000]
  def initialize
    @total_amount = 0
  end

  def total_amount
    @total_amount
  end

  def insert money
    # TODO 許可リストを配列で定義
    return money unless VALID_MANEYS.include? money
    @total_amount += money
    0
  end

  def refund
    charge = @total_amount
    @total_amount = 0
    charge
  end

end