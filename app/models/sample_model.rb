
def quiz(answer1, answer2)
    results = 0
    if answer1 == "Scottsdale"
      results += 1
    elsif answer1 == "Phoenx"
      results += 2
    elsif answer1 == "Tempe"
      results += 3
    end
    
    if answer2 == "all"
      results += 1
    elsif answer2 == "vegan"
      results += 2
    elsif answer2 == "vegetarian"
      results += 3
    end
    
    answers = ["Grass Roots", "Mad Greens", "Fresh Mint"]
    if results >= 0 && results <= 2
        return answers[0]
        elsif results >= 3 && results < 5
        return answers[1]
        elsif results >= 5 && results < 7 
        return answers[2]
    end
end