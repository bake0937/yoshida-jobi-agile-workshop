class Enemy
  attr_accessor :hp, :life
  # hp: 残り体力
  # life: 最大HP
  def initialize(life)
    @hp = life
    @life = life
  end

  def defeated(attack)
    if @hp < attack
      p '戦闘不能になった'
    else
      @hp - attack
    end
  end
end
