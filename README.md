# caesar-cipher

By calling caeser_cipher(phrase, shift) where phrase is a string & shift is an integer the string moves through the alphabet a number of times equal to the shift value (e.g. A - C would be a shift of two.)

The string is initially converted into a character array of ordinals. Once the shift is completed the array is transformed back into a character array and is displayed to the user as a string.

If the string reachs 'Z' and needs to keep going it will roll-over and set the value of the shifted element back to 'A'.

Case of the letters will remain the same. Uppercase & lowercase letters will both work for this string.