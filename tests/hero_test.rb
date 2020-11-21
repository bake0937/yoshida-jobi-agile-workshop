# require 'test_helper'
require_relative '../src/hero'
require_relative'../src/enemy'
require 'minitest/autorun'

class HeroTest < Minitest::Test
  def setup
    hero = Hero.new('')
    enemy = Enemy.new(100)
  end
  
  def test_attack
      assert_equal '敵を倒した', hero.attack(enemy)
  end

  def test_level_up

    attack = hero.attack + 1
    attack = hero. + 1
    # hero.attack(enemy)
    # assert_equal 101, hero.hp
    assert_equal  100, hero.attack(enemy)
  end

  


end
