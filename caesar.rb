def caesar (strInput, shiftValue)
    str_length = strInput.length
    str_out = ""
    ascii_value = 0
    char_a = 97
    char_z = 122
    char_A = 65
    char_Z = 90
    char_0 = 48
    char_9 = 57
    if shift_value == 0
        return str_input
    end
    if shift_value > 0
        for(let i = 0 i < str_length i++ ){
            ascii_value = positive_shift(str_input[i].charCodeAt(), shift_value)
            str_out = str_out + String.fromCharCode(ascii_value)
        }
        return str_out 
    end
    if (shift_value < 0){
        for(let i = 0 i < str_length i++){
            ascii_value = negative_shift(str_input[i].charCodeAt(), shift_value)
            str_out = str_out + String.fromCharCode(ascii_value)
        }
        return str_out 
    end
    return "ERROR"
end
def positive_shift(char,shift)
    let tmp_char = 0
    let char_out = 0
    if (char >= 48 && char <= 57)
        tmp_char = char + shift 
        while(tmp_char >57){
            tmp_char = 48 + (tmp_char - 57) - 1 
        end
        char_out = tmp_char
    elseif(char >= 65 && char <= 90)
        tmp_char = char + shift 
        while(tmp_char > 90)
            tmp_char = 65 + (tmp_char - 90) - 1
        end
        char_out = tmp_char
    elseif(char >= 97 && char <= 122){
        tmp_char = char + shift 
        while(tmp_char > 122){
            tmp_char = 97 + (tmp_char - 122) -1
        }
        char_out = tmp_char
    else 
        char_out = char
    end
    return char_out 
end
def negative_shift(char, shift)
    let tmp_char = 0
    let char_out = ""
    if (char >= 48 && char <= 57)
        let tmp_char = char + shift 
        while(tmp_char < 48)
            tmp_char = 57 - (48-tmp_char) +1
        end
        char_out = tmp_char
    elseif (char >= 65 && char <= 90)
        let tmp_char = char + shift 
        while(tmp_char<65)
            tmp_char = 90 - (65 - tmp_char) + 1
        end
        char_out = tmp_char
    elseif (char >= 97 && char <= 122)
        let tmp_char = char + shift 
        while(tmp_char < 97)
            tmp_char = 122 - (97 - tmp_char) + 1
        end
        char_out = tmp_char
    else
        char_out = char
    end
    return charOut
end
