require_relative'./enemy'
require_relative '../src/character'

class Hero < Character
  def initialize(power,life)
    super(power, life)
    @name = '勇者'
  end

  def attack(enemy)
    p "#{@name}の攻撃"
    enemy.hp -= @power * rand(1...2.0).round(1)
    if enemy.hp <= 0
      p "#{enemy.name}を倒した"
      level_up()
    elsif enemy.hp <= enemy.life * 0.4
      p "#{enemy.name}「うぅ、仕様変更はもうやめて、、」"
    elsif enemy.hp > 0
      p "#{enemy.name}に#{@power}ダメージを与えた"
      p "#{enemy.name} は余裕の表情。全然効いてない。"
    end
  end

  def level_up
    @power += 3
    @life += 3
    p "勇者はレベルが上がった。勇者は開発力が3、メンタルが3上がった"
  end
end
