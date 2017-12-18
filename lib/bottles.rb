class Bottles

  def song
    puts 'song'
  end

  def verse(number_of_bottles)
    result = ''
    if number_of_bottles.zero?
      result += "#{bottles(number_of_bottles).capitalize} of beer on the wall, #{bottles(number_of_bottles)} of beer.\n"
      result += "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      result += "#{bottles(number_of_bottles)} of beer on the wall, #{bottles(number_of_bottles)} of beer.\n"
      number_of_bottles -= 1
      result += "Take #{number_of_bottles < 1 ? 'it' : 'one';} down and pass it around, #{bottles(number_of_bottles)} of beer on the wall.\n"
    end
    result
  end

  def verses(from, to)
    from.downto(to) {|n| print n}
  end

  def bottles(num_of_bottles)
    if num_of_bottles > 1
      "#{num_of_bottles} bottles"
    elsif num_of_bottles == 1
      "#{num_of_bottles} bottle"
    else
      "no more bottles"
    end
  end

end

# a = Bottles.new.verse(0)
# puts a
# b = Bottles.new.verse(1)
# puts b
# c = Bottles.new.verse(89)
# puts c

d = Bottles.new.verses(10, 1)
puts d