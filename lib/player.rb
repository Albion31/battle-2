class Player
DEFAULT_HP = 40
DEFAULT_DAMAGE = 10

  attr_reader :name
  attr_accessor :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def reduce_hp(amount = DEFAULT_DAMAGE)
    @hp -= amount
  end
end
