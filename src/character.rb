class Character
  attr_accessor :life, :power, :hp, :name
  def initialize(power,life)
    @power = power
    @life = life
    @hp = life
    @name = ''
  end

  def attack(enemy)
  end
end
