require_relative'./enemy'

class Hero
  attr_accessor :life,:power
  def initialize(power,life)
    @power = power
    @life = life
  end

  def attack(enemy)
    enemy.hp -= @power
    if enemy.hp <= 0
      p 'ゴブリンひらかわを倒した'
    elsif enemy.hp <= enemy.life * 0.4
      p "ゴブリンひらかわ「うぅ、仕様変更はもうやめて、、」"
    elsif enemy.hp > 0
      p "勇者が#{@power}ダメージを与えた"
    end
  end

  def level_up
    
    "勇者はレベルが上がった"
  end

  
end
