# coding: utf-8

class VendingMachine
  def initialize
    @total_amount = 0
  end

  def total_amount
    @total_amount
  end

  def insert money
    # TODO 許可リストを配列で定義
    return money if money == 1
    @total_amount += money
  end

  def refund
    total_amount = @total_amount
    @total_amount = 0
    total_amount
  end

end