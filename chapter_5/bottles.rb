# Shameless Green

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def pronoun
    if number == 1
      'it'
    else
      'one'
    end
  end


  def action
    if number == 0
      'Go to the store and buy some more, '
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def sucessor
    if number == 0
      99
    else
      number - 1
    end
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
    bottle_number = BottleNumber.new(number)
    next_bottle_number =  BottleNumber.new(bottle_number.sucessor)
    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of milk on the wall, " \
      "#{bottle_number.quantity} #{bottle_number.container} of milk.\n" \
      "#{bottle_number.action}" \
      "#{next_bottle_number.quantity} #{next_bottle_number.container} of milk on the wall.\n"
  end
end
