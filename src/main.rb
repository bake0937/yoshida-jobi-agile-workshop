require_relative '../src/hero'
require_relative '../src/enemy'

hero = Hero.new(100, 100)
enemy = Enemy.new(300)

p 'ゴブリンひらかわが現れた'

while enemy.hp > 0
  p "y で攻撃。他のボタンで逃げる"
  decision = gets.chomp
  puts decision
  if decision == 'y'
    hero.attack(enemy)
  else
    p "勇者は逃げ出した"
    break
  end
end
