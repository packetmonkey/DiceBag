require 'DiceBag'

describe DiceBag do
  it "infers 1d when none provided" do
    500.times do
      roll = DiceBag.roll("d4")
      roll.should >= 1 and roll.should <= 4
    end
  end

  it "rolls a single die" do
    500.times do
      roll = DiceBag.roll("1d4")
      roll.should >= 1 and roll.should <= 4
    end
  end

  it "rolls mutiple dice" do
    500.times do
      roll = DiceBag.roll('3d4')
      roll.should >= 3 and roll.should <= 12
    end
  end

  it "supports addition" do
    500.times do
      roll = DiceBag.roll('1d4+1')
      roll.should >= 2 and roll.should <= 5
    end
  end

  it "supports subtraction" do
    500.times do
      roll = DiceBag.roll('1d4 - 1')
      roll.should >= 0 and roll.should <= 3
    end
  end

  it "supports dice rerolling" do
    500.times do
      roll = DiceBag.roll('1d4r3')
      roll.should == 4
    end
  end
end
