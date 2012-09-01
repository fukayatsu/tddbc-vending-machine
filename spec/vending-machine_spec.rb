# coding: utf-8

require 'vending-machine'

describe VendingMachine do
  subject (:machine) { VendingMachine.new }

  context "お金を投入していない時" do
    it '総計0円' do

      machine.total_amount.should == 0
    end
  end

  context "10円投入した場合" do
    it '総計10円' do
      machine.insert(10)
      machine.total_amount.should == 10
     end
  end

  context "複数回投入した場合" do
    it '100円と10円を投入したら総計110円' do
      pending
    end

  end
end
