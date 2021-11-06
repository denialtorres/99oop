require 'pry'

class Bottles

  def initialize
  end

  def verses(first_verse, second_verse)
    fulse_verse = ""
    sequence = (second_verse..first_verse).to_a.reverse

    sequence.each_with_index do |bottles, index|
      fulse_verse += single_verse(bottles)
      if index != sequence.size - 1
        fulse_verse += "\n"
      end
    end

    fulse_verse
  end

  def verse(content)
    single_verse(content)
  end

  def song
    fulse_verse = ""
    sequence = (0..99).to_a.reverse

    sequence.each_with_index do |bottles, index|
      fulse_verse += single_verse(bottles)
    end

    fulse_verse
  end

  private

  def single_verse(bottles=0)
     retulst = if bottles.zero?
                     "No more bottles of milk on the wall, " +
                     "no more bottles of milk.\n" +
                     "Go to the store and buy some more, " +
                     "99 bottles of milk on the wall.\n"
                   elsif bottles == 1
                     "1 bottle of milk on the wall, " +
                     "1 bottle of milk.\n" +
                     "Take it down and pass it around, no more bottles of milk on the wall.\n"
                   else
                     remain_bottles = (bottles - 1) > 1 ? "#{bottles - 1} bottles of milk on the wall.\n" : "1 bottle of milk on the wall.\n"
                     "#{bottles} bottles of milk on the wall, " +
                     "#{bottles} bottles of milk.\n" +
                     "Take one down and pass it around, " +
                     remain_bottles
                   end
  end
end
