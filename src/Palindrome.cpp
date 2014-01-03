#include "../src/Palindrome.h"
#include <string>
using std::string;
#include "StringServices.h"

bool isPalindrome(const string &string_to_check)
{
    vector<char> char_vector(string_to_check.begin(), string_to_check.end());
    return isPalindrome<char>(char_vector);
}

bool isPalindrome(string string_to_check, bool register_sensetive)
{
    if(!register_sensetive)
    {
        string_to_check = stringToLowerCase(string_to_check);
    }
    return isPalindrome(string_to_check);
}
