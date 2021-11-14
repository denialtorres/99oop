# Shameless Green

class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect do |number_of_bottles|
      verse(number_of_bottles)
    end.join("\n")
  end

  def quantity(number)
    if number.zero?
      "no more"
    else
      number.to_s
    end
  end

  def pronoun(number)
    if number == 1
      'it'
    else
      'one'
    end
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def action(number)
    if number == 0
      'Go to the store and buy some more, '
    else
      "Take #{pronoun(number)} down and pass it around, "
    end
  end

  def sucessor(number)
    if number.zero?
      99
    else
      number - 1
    end
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " \
      "#{quantity(number)} #{container(number)} of milk.\n" \
      "#{action(number)}" \
      "#{quantity(sucessor(number))} #{container(sucessor(number))} of milk on the wall.\n"
  end
end
