def ceaser_cipher(phrase, shift)

  upper_letters = ('A'..'Z').to_a

  lower_letters = ('a'..'z').to_a

  phrase_arr = phrase.chars

  phrase_arr.each_with_index do |letter, index|
    if upper_letters.include?(letter.upcase)
      start = upper_letters.find_index(letter.upcase)
      new_letter = start + shift
      if new_letter > 25
        new_letter = new_letter % 25
      end
      if letter === letter.upcase
        phrase_arr[index] = upper_letters[new_letter]
      end
      if letter === letter.downcase
        phrase_arr[index] = lower_letters[new_letter]
      end
    end
  end

  phrase_arr.join('')
end
