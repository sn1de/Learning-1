puts "HELLO, SONNY."
byeCount = 0
while true
  input = gets.chomp
  # If the input is all caps
  if input == input.upcase
    # If the input is all caps BYE
    if input == "BYE"
      byeCount += 1
      #puts byeCount (can be used to track byeCount)
      if byeCount == 3
        puts "GOODBYE, DEARY."
        break
      end
    end
    # Generate random number. Range:1900 - 2014
    #year = rand(115) + 1900 # rand(max) exclusive of max
    #year = rand(1900..2014) # rand(A..B) inclusive
    year = rand(1900...2015) # rand(A...B) exclusive of B
    puts "NO, NOT SINCE #{year}."
  # If answer isn't all caps
  else
    # Set byeCount to 0. Forces BYE to occur 3 times in a row to reach 3.
    byeCount = 0
    puts "HUH?! SPEAK UP, SONNY!"
  end
end