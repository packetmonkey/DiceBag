class DiceBag
  def self.roll(dice_string)
    @exec = Array.new
    dice_string.split(/(\W)/).each do |c|
      @exec << c and next unless c =~ /d/
      number, sides, reroll  = c.split(/d|r/)
      number = 1 if number.to_i == 0
      roll = 0
      number.to_i.times do  
        while(true) do tmp_roll = 1 + rand(sides); break if tmp_roll > reroll.to_i end
        roll = roll.to_i + tmp_roll
      end
      @exec << roll
    end
    Kernel.eval(@exec.join(''))
  end
end

