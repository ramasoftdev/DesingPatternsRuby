# frozen_string_literal: true

# AbstractBehavior module
module AbstractBehavior
  def not_implemented_error
    raise NotImplementedError, "#{self.class} has not implemented method '#{__callee__}'"
  end
end

# WeaponBehavior class can't be instanciated directly
class WeaponBehavior
  include AbstractBehavior

  def initialize
    not_implemented_error if instance_of?(WeaponBehavior)
  end

  def use_weapon
    not_implemented_error
  end
end

# SwordBehavior
class SwordBehavior < WeaponBehavior
  def use_weapon
    "Using #{self.class.name}"
  end
end

# KnifeBehavior
class KnifeBehavior < WeaponBehavior
  def use_weapon
    "Using #{self.class.name}"
  end
end

# BowAndArrowBehavior
class BowAndArrowBehavior < WeaponBehavior
  def use_weapon
    "Using #{self.class.name}"
  end
end

# AxeBehavior
class AxeBehavior < WeaponBehavior
  def use_weapon
    "Using #{self.class.name}"
  end
end

# Character abstract class can't be instanciated directly
class Character
  #
  #
  # @abstract
  include AbstractBehavior
  attr_writer :weapon_behavior

  def initialize
    not_implemented_error if instance_of?(Character)
  end

  def fight
    "fighting #{@weapon_behavior.use_weapon}"
  end
end

# class King
class King < Character
  def initialize(weapon_behavior)
    super()
    @weapon_behavior = weapon_behavior
  end
end

# class Queen
class Queen < Character
  def initialize(weapon_behavior)
    super()
    @weapon_behavior = weapon_behavior
  end
end

# class Knight
class Knight < Character
  def initialize(weapon_behavior)
    super()
    @weapon_behavior = weapon_behavior
  end
end

# class Troll
class Troll < Character
  def initialize(weapon_behavior)
    super()
    @weapon_behavior = weapon_behavior
  end
end

sword = SwordBehavior.new
knife = KnifeBehavior.new
bow_and_arrow = BowAndArrowBehavior.new
axe = AxeBehavior.new

troll1 = Troll.new(sword)
puts troll1.fight
troll1.weapon_behavior = knife
puts troll1.fight
troll1.weapon_behavior = bow_and_arrow
puts troll1.fight
troll1.weapon_behavior = axe
puts troll1.fight
