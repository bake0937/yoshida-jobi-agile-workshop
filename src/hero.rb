require_relative'./enemy'

class Hero
  attr_accessor :life,:attack
  def initialize(attack,life)
    @attack = attack
    @life = life
  end

  def attack(enemy, attack =100)
    enemy.hp -= attack
    if enemy.hp <= 0
      puts '敵を倒した'
      
    end
  end
end
