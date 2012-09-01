# coding: utf-8

require 'vending-machine'

describe VendingMachine do
  context "お金を投入していない時" do
    it '総計0円' do
      machine = VendingMachine.new
      machine.total_amount.should == 0

    end
  end

end
