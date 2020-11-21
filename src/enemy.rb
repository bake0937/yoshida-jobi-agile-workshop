class Enemy
  attr_accessor :hp
  def initialize(hp)
    @hp = hp
  end

  def defeated(attack)
    if @hp < attack
      p '戦闘不能になった'
    else
      @hp - attack
    end
  end
end
