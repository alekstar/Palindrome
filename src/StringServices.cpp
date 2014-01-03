#include "StringServices.h"
#include <string>
using std::string;
#include <algorithm>
using std::for_each;

void charToLowerCase(char &c)
{
    c = tolower(c);
}

string stringToLowerCase(string input_string)
{
    for_each(input_string.begin(), input_string.end(), charToLowerCase);
    return input_string;
}
