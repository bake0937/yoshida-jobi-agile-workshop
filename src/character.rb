class Character
  attr_accessor :life, :power, :hp
  def initialize(power,life)
    @power = power
    @life = life
    @hp = life
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
end
