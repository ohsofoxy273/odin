def caesar_cipher(string, shift)
  new_string = []
  shift -= 1  
  string.split('').each do |s| 
    s = s.ord
    if (s >= 65 && s <= 90)
      s = ((s + shift - 90) % 26) + 65
    elsif (s >= 97 && s <= 122)
      s = ((s + shift - 122) % 26) + 97
    else
      s = s
    end
    s = s.chr
    new_string << s
  end
  puts new_string.join()
end

caesar_cipher("What a string!", 5)