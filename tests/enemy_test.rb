require_relative'../src/enemy'
require_relative'../src/hero'
require 'minitest/autorun'

class EnemyTest < Minitest::Test
  def test_defeated
    enemy = Enemy.new(100)
    assert_equal '戦闘不能になった', enemy.defeated(200)
  end
end
