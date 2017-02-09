def caesar_cipher(string, number)
  string.gsub(/[a-z]/i) do |letter|
	  if letter.ord.between?('A'.ord, 'Z'.ord)
		  x = letter.ord + number
		  x -= 26 if x > 'Z'.ord
		  letter = x.chr
	  else
		  x = letter.ord + number
	    x -= 26 if x > 'z'.ord
	    letter = x.chr
	  end
  end
end
