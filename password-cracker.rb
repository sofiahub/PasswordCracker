require 'digest/md5'

#Password cracker

SALT = "FOOBAR"

def match_char(char)
    case char
    when "a"
      "b"
    when "b"
      "c" 
    when "c"
      "d"  
    when "d"
      "e" 
    when "e"
      "f"
    when "f"
      "g"
    when "g"
      "h"
    when "h"
      "i"
    when "i"
      "j"
    when "j"
      "k"
    when "k"
      "l"
    when "l"
      "m"
    when "m"
      "n"
    when "n"
      "o"
    when "o"
      "p"
    when "p"
      "q"
    when "q"
      "r"
    when "r"
      "s"
    when "s"
      "t"
    when "t"
      "v"
    when "v"
      "w"
    when "w"
      "x"
    when "x"
      "y"
    when "y"
      "z"
    when "z"
      "u"
    when "u"
      "A"
    when "A"
      "B"
    when "B"
      "C"
    when "C"
      "D"
    when "D"
      "E"
    when "E"
      "F"
    when "F"
      "G"
    when "G"
      "H"
    when "H"
      "I"
    when "I"
      "J"
    when "J"
      "K"
    when "K"
      "L"
    when "L"
      "M"
    when "M"
      "N"
    when "N"
      "O"
    when "O"
      "P"
    when "P"
      "Q"
    when "Q"
      "R"
    when "R"
      "S"
    when "S"
      "T"
    when "T"
      "V"
    when "V"
      "X"
    when "X"
      "Y"
    when "Y"
      "W"
    when "W"
      "Z"
    when "Z"
      "U"
    when "U" 
      "1"
    when "1"
      "2"
    when "2"
      "3"
    when "3"
      "4"
    when "4"
      "5"
    when "5"
      "6"
    when "6"
      "7"
    when "7"
      "8"
    when "8"
      "9"
    when "9"
        "0"
    when "0"
      "!"
    when "!"
      "?"
    when "?"
      "£"
    when "£"
      "$"
    when "$"
      "("
    when "("
      ")"
    when ")"
      "<"
    when "<"
      ">"
    when ">"
      "."
    when "."
      ","
    when ","
      "@"
    when "@"
      "\\"
    when "\\"
      "€"
    when "€"
      "&"
    when "&"
      "*"
    when "*"
      "\""
    when "\""
      "%"
    when "%"
      "|"
    when "|"
      "-"
    when "-"
      "_"
    when "_"
      "="
    when "="
      "+"
    when "+"
      "¬"
    when "¬"
      "#"
    when "#"
      "["
    when "["
      "]"
    when "]"
      "{"
    when "{"
      "}"
    when "}"
      ";"
    when ";"
      ":"
    when ":"
      " "
    when " "
      "a"  
    end 
end

def head(n)
    n[0]
end
  
def tail(n)
    n[1..-1]
end

def mutate_string(stringy)
    string_array = stringy
    head_of_array = head string_array
    if string_array.length == 0
        "a"
    elsif head_of_array == " " and match_char(head_of_array) == "a"
        match_char(head_of_array) + mutate_string(tail stringy)
    else
        match_char(head_of_array) + tail(stringy)
    end
end

def die(hash)
  str = ""  
  while true
        if Digest::MD5.hexdigest(SALT + str) == hash
          puts "Password: " + str
          return nil
        end
        str = mutate_string(str)
    end
end

puts "Please Terry you already waste my time introduce your hash and leave me alone: "
hash = gets.chomp
die(hash)
