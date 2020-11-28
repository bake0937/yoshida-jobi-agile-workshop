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
      level_up()
    elsif enemy.hp <= enemy.life * 0.4
      p "ゴブリンひらかわ「うぅ、仕様変更はもうやめて、、」"
    elsif enemy.hp > 0
      p "勇者が#{@power}ダメージを与えた"
    end
  end

  def level_up
    @power += 3
    @life += 3
    
    p "勇者はレベルが上がった。勇者は開発力が3、メンタルが3上がった"
  end

  
end
