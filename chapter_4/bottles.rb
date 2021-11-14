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

  def quantity(number)
    if number == 0
      "no more"
    else
      number
    end
  end

  def verse(number)
    case number
    when 0
      'No more bottles of milk on the wall, ' \
        "no more bottles of milk.\n" \
        'Go to the store and buy some more, ' \
        "99 bottles of milk on the wall.\n"
    else
      "#{number} #{container(number)} of milk on the wall, " \
        "#{number} #{container(number)} of milk.\n" \
        "Take #{pronoun(number)} down and pass it around, " \
        "#{quantity(number-1)} #{container(number - 1)} of milk on the wall.\n"
    end
  end
end
