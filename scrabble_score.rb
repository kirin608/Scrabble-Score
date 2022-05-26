# Scrabble Score
# Write a method that takes a word and returns the Scrabble score for that word. 
# Here are the values of letters in Scrabble:

def get_player_input
    print 'Please enter the word or phrase: '
    gets.chomp  
end

def letter_score 
letter_score  = {
'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1, 'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1 ,    
'D' => 2, 'G' => 2,                               
'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,                         
'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4,                      
'K' => 5,                                  
'J' => 8, 'X' => 8,                             
'Q' => 10, 'Z' => 10,                           
}
end

def scrabble (entered_letters_start = get_player_input())
    entered_letters = entered_letters_start.delete(' '',''.''!''?').upcase.split("")
    scrabble_total = 0
    entered_letters.each do |single_letter|
    scrabble_total += letter_score[single_letter]
    end
    scrabble_total
end

     