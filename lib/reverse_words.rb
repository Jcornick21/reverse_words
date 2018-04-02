# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  a = 0
  b = my_words.length

  while a < b

    while my_words[a] == " "
      a += 1
    end

    first_word = a

    while my_words[first_word] != " " && first_word < my_words.length - 1
      first_word += 1
    end

    c = a
    d = first_word


    while c < d
      while my_words[c] == " "
        c += 1
      end

      while my_words[d] == " "
        d -= 1
      end
      temp_value = my_words[c]
      my_words[c] = my_words[d]
      my_words[d] = temp_value

      c += 1
      d -= 1
    end

    a = first_word + 1
  end
  return my_words
  # raise NotImplementedError
end
