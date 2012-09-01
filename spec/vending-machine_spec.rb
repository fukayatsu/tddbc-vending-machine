# coding: utf-8

require 'vending-machine'

describe VendingMachine do
  subject (:machine) { VendingMachine.new }

  context "お金を投入していない時" do
    it '総計0円' do
      machine.total_amount.should == 0
    end

    it '払い戻し0円' do
      machine.refund.should == 0
    end
   end


  context "10円投入した時" do
    before do
      machine.insert 10
    end

    it '総計10円' do
      machine.total_amount.should == 10
    end

    it '払い戻しが10円' do
      machine.refund.should == 10
    end

    it '払い戻し後に総計0円' do
      machine.refund
      machine.total_amount.should == 0
    end
  end

  context "100円と10円を投入した時" do
    before do
      machine.insert 100
      machine.insert 10
    end

    it '総計110円' do
      machine.total_amount.should == 110
    end

    it '払戻しが110円' do
      machine.refund.should == 110
    end
  end

  context "使えるお金が投入された時" do
    it '100円を入れて0円が返ってくる' do
      machine.insert(100).should == 0
    end

    it '1000円を入れて0円返ってくる' do
      machine.insert(1000).should == 0
    end
  end

  context "想定外のお金が投入された時" do
    it '1円玉がそのまま返ってくる' do
      machine.insert(1).should == 1
    end

    it '5円玉がそのまま返ってくる' do
      machine.insert(5).should == 5
    end

    context "1円玉を投入" do
      before do
        machine.insert 1
      end

      it '総計が0' do
        machine.total_amount.should == 0
      end
    end
  end

end
