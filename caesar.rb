def caesar (str_input, shift_value)
    str_length = str_input.length
    str_out = ""
    ascii_value = 0
#    char_a = 97
#    char_z = 122
#    char_A = 65
#    char_Z = 90
#    char_0 = 48
#    char_9 = 57
    if shift_value == 0
        return str_input
    end
    if shift_value > 0
        l = str_length-1
        for  i in 0..l do
            ascii_value = positive_shift(str_input[i].ord, shift_value)
            str_out = str_out + ascii_value.chr
        end
        return str_out 
    end
    if (shift_value < 0)
        l = str_length-1
        for i in 0..l do
            ascii_value = negative_shift(str_input[i].ord, shift_value)
            str_out = str_out + ascii_value.chr
        end
        return str_out 
    end
    return "ERROR"
end

def positive_shift(char,shift)
    tmp_char = 0
    if char >= 48 && char <= 57 # Digits
        tmp_char = char + shift 
        while tmp_char >57 do
            tmp_char = 48 + (tmp_char - 57) - 1 
        end
        return tmp_char
    elsif char >= 65 && char <= 90 # Uppercase Letters
        tmp_char = char + shift 
        while tmp_char > 90 do
            tmp_char = 65 + (tmp_char - 90) - 1
        end
        return tmp_char
    elsif char >= 97 && char <= 122 #Lowercase letters
        tmp_char = char + shift 
        while tmp_char > 122 do
            tmp_char = 97 + (tmp_char - 122) -1
        end
        return tmp_char
    else 
        return char
    end
end
def negative_shift(char, shift)
    tmp_char = 0
    if (char >= 48 && char <= 57) # Digits
        tmp_char = char + shift 
        while tmp_char < 48 do
            tmp_char = 57 - (48-tmp_char) +1
        end
        return tmp_char
    elsif (char >= 65 && char <= 90) # Uppercase letters
        tmp_char = char + shift 
        while (tmp_char<65) do
            tmp_char = 90 - (65 - tmp_char) + 1
        end
        return tmp_char
    elsif (char >= 97 && char <= 122) # Lowercase letters
        tmp_char = char + shift 
        while (tmp_char < 97) do
            tmp_char = 122 - (97 - tmp_char) + 1
        end
        return tmp_char
    else
        return char
    end
end
