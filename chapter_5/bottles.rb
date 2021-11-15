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

  def container(number)
    BottleNumber.new(number).container
  end

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end


  def action(number)
    BottleNumber.new(number).action
  end

  def sucessor(number)
    BottleNumber.new(number).sucessor
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " \
      "#{quantity(number)} #{container(number)} of milk.\n" \
      "#{action(number)}" \
      "#{quantity(sucessor(number))} #{container(sucessor(number))} of milk on the wall.\n"
  end
end
