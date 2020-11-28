# require 'test_helper'
require_relative '../src/hero'
require_relative'../src/enemy'
require 'minitest/autorun'

class HeroTest < Minitest::Test
  def setup
    hero = Hero.new(100, 100)
    enemy = Enemy.new(100, 100)
  end
  # 勇者が敵を攻撃するテスト
  def test_attack_hero
    hero = Hero.new(10,10)
    enemy = Enemy.new(100, 30)
    # 敵を倒せなかった場合
    assert_equal "#{enemy.name}に#{hero.power}ダメージを与えた", hero.attack(enemy)
    # 敵の残り体力40%以下
    assert_equal 'ゴブリンひらかわ「うぅ、仕様変更はもうやめて、、」', hero.attack(enemy)
    # 敵を倒した時
    assert_equal '勇者はレベルが上がった。勇者は開発力が3、メンタルが3上がった', hero.attack(enemy)

    # 倒した数が一致していること確認
  end

  def test_level_up
    hero = Hero.new(100,100)
    assert_equal "勇者はレベルが上がった。勇者は開発力が3、メンタルが3上がった", hero.level_up

    # attack = hero.power + 1
    # attack = hero. + 1
    # # hero.attack(enemy)
    # # assert_equal 101, hero.hp
    # assert_equal  100, hero.attack(enemy)
  end

  # 魔王出現
  #heroクラスにkillパラメータを持たせる
  #
end
