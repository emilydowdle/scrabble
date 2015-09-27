class Scrabble

  def score(word, score=0)
    if word.nil? || word.class != String || word.empty?
      score
    elsif word.include? " "
      return "Please enter only one word."
    else
      assign_point_value(word, score)
    end
  end

  def assign_point_value(word, score)
    word_arr = word.upcase.chars
    word_arr.reduce(score) { |sum, letter| sum += point_values[ letter ] }
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

end
