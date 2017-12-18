class Bottles

  def song
    verses(99, 0)
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
    from.downto(to).collect { |v| verse(v) }.join("\n")
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
