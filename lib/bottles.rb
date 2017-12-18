class Bottles

  def song
    puts 'song'
  end

  def verse(number_of_bottles)
    result = ''
    if number_of_bottles == 0
      result += "#{bottles(number_of_bottles).capitalize} of beer on the wall, #{bottles(number_of_bottles)} of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
    else
      result += "#{bottles(number_of_bottles)} of beer on the wall, #{bottles(number_of_bottles)} of beer.\n"
      number_of_bottles -= 1
      result += "Take #{number_of_bottles < 1 ? 'it' : 'one';} down and pass it around, #{bottles(number_of_bottles)} of beer on the wall.\n"
    end
    result
  end

  def verses(v, w)
    puts 'more verses'
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

b = Bottles.new.verse(1)
puts b
c = Bottles.new.verse(89)
puts c