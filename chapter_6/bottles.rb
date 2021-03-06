# Shameless Green

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(number)
    begin
      const_get("BottleNumber#{number}")
    rescue NameError
      BottleNumber
    end.new(number)
  end

  def to_s
    "#{quantity} #{container}"
  end

  def container
    'bottles'
  end

  def quantity
    number.to_s
  end

  def action
    "Take #{pronoun} down and pass it around, "
  end

  def pronoun
   'one'
  end

  def sucessor
    BottleNumber.for(number - 1)
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
    BottleNumber.for(99)
  end
end

class BottleNumber1 < BottleNumber
  def container
    'bottle'
  end

  def pronoun
    'it'
  end
end

class BottleNumber6 < BottleNumber
  def container
    "six-pack"
  end

  def quantity
    "1"
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

  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number}".capitalize + " of milk on the wall, " \
      "#{bottle_number} of milk.\n" \
      "#{bottle_number.action}" \
      "#{bottle_number.sucessor} of milk on the wall.\n"
  end
end
