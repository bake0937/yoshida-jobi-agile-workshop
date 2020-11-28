require_relative'./enemy'
require_relative '../src/character'

class Hero < Character
  def level_up
    @power += 3
    @life += 3
    p "勇者はレベルが上がった。勇者は開発力が3、メンタルが3上がった"
  end
end
