// Convert the positive integer to a Roman Numeral
    string[13] memory symbols = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'];
    uint16[13] memory values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    string memory rom_num = "";
    
    
    while (n > 0) {
        for(uint i=0; i <= 13; i++) {
          rom_num = string.concat(rom_num, symbols[i]);
          n = n - values[i];
        }
    return rom_num;
    }
  }