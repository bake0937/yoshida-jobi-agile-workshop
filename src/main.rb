require_relative '../src/hero'
require_relative '../src/enemy'

hero = Hero.new(100, 100)
enemy = Enemy.new(1000)

p '敵が現れた'

puts enemy.hp
while enemy.hp > 0
  p "y で攻撃。それ以外で終了"
  decision = gets.chomp
  puts decision
  if decision == 'y'
    hero.attack(enemy)
  else
    break
  end
end



