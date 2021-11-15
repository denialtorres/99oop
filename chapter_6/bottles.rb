# Shameless Green

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def quantity
    number.to_s
  end

  def action
    "Take #{pronoun} down and pass it around, "
  end

  def pronoun
    if number == 1
      'it'
    else
      'one'
    end
  end

  def sucessor
    number - 1
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def action
    'Go to the store and buy some more, '
  end

  def sucessor
    99
  end
end

class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect do |number_of_bottles|
      verse(number_of_bottles)
    end.join("\n")
  end

  def bottle_number_for(number)
    if number == 0
      BottleNumber0
    else
      BottleNumber
    end.new(number)
  end

  def verse(number)
    bottle_number = bottle_number_for(number)
    next_bottle_number = bottle_number_for(bottle_number.sucessor)

    "#{bottle_number}".capitalize + " of milk on the wall, " \
      "#{bottle_number} of milk.\n" \
      "#{bottle_number.action}" \
      "#{next_bottle_number} of milk on the wall.\n"
  end
end
