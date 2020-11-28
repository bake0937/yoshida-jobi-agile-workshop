require_relative '../src/hero'
require_relative '../src/enemy'

hero = Hero.new(10, 100)
enemy = Enemy.new(10, 100)

p 'ゴブリンひらかわが現れた'


while enemy.hp > 0
  
  puts "\n\n\n"
  p"#####################"
  p "勇者のメンタル:#{hero.hp}"
  p"#####################"
  p "y で攻撃。他のボタンで逃げる"
  
  decision = gets.chomp
  if decision == 'y'
    hero.attack(enemy)
    if enemy.hp <= 0
      break
    end
    # enemyの攻撃
    puts "\n"
    enemy.attack(hero)
    
    if hero.hp <= 0
      break
    end

  else
    p "勇者は逃げ出した"
    break
  end
end
