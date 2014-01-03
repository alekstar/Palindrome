#ifndef PALINDROME_H
#define	PALINDROME_H

#include <gtest/gtest_prod.h>
#include <vector>
using std::vector;
#include <algorithm>
using std::equal;
#include <string>
using std::string;

const bool REGISTER_SENSITIVE_YES       = true;
const bool REGISTER_SENSITIVE_NO        = false;

template<typename CUSTOM_TYPE>
bool isPalindrome(vector<CUSTOM_TYPE> v)
{
    if(v.size() == 0)
    {
        return false;
    }
    typename vector<CUSTOM_TYPE>::iterator v_middle = v.begin();
    v_middle += v.size() / 2;
    bool is_equal = equal(v.begin(), v_middle, v.rbegin());
    
    return is_equal;
}

bool isPalindrome(const string &string_to_check);
bool isPalindrome(string string_to_check, bool register_sensetive);

#endif	/* PALINDROME_H */

