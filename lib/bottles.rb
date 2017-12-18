class Bottles

  def song
    puts 'song'
  end

  def verse(v)
    puts 'verse'
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