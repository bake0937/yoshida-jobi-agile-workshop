require_relative'../src/enemy'
require_relative'../src/hero'
require 'minitest/autorun'

class EnemyTest < Minitest::Test
  # 勇者が的にダメージを受けること
  def test_attack
    hero = Hero.new(10,100)
    enemy = Enemy.new(50, 30)
    # ゴブリンひらかわの攻撃．
    # 勇者は○○のダメージを受けた．
    assert_equal "#{hero.name}が#{enemy.power}ダメージを受けた", enemy.attack(hero)
    # 勇者の体力0ならゲームオーバー
    assert_equal "納期は過ぎた．ゲームオーバー．", enemy.attack(hero)
  end
end
