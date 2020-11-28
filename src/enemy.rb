require_relative '../src/character'

class Enemy < Character
  def initialize(power,life)
    super(power, life)
    @name = 'ゴブリンひらかわ'
  end

  def attack(hero)
    p "#{@name}の攻撃"
    hero.hp -= @power * rand(1...2.0).round(1)
    if hero.hp <= 0
      p "納期は過ぎた．ゲームオーバー．"
    elsif hero.hp <= hero.life * 0.4
      p "#{hero.name}「納期が過ぎてしまう...」"
    elsif hero.hp > 0
      p "#{hero.name}が#{@power}ダメージを受けた"
    end
  end
end
