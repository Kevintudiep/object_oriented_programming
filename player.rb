class Player



  def initialize
    @gold_coins = 9
    @health_points = 1
    @lives = 1
  end

  def gold_coins
    puts @gold_coins
  end

  def health_points
    puts @health_points
  end

  def lives
    puts @lives
  end

  def level_up
    @lives += 1
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      @lives += 1
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      if @lives == 0
      self.restart
      end
    end
  end


  # def auto_restart
  #   if @lives == 0
  #     @gold_coins = 0
  #     @health_points = 10
  #     @lives = 5
  #   end
  # end




end

kevin = Player.new

puts kevin.gold_coins
puts kevin.health_points
puts kevin.lives

kevin.do_battle(1)

puts kevin.gold_coins
puts kevin.health_points
puts kevin.lives
