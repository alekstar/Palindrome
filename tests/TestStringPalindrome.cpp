#include "../src/Palindrome.h"
#include <gtest/gtest.h>
#include <string>
using std::string;

TEST(TestStringPalindrome, EmptyString)
{
    string test_string("");
    EXPECT_EQ(false, isPalindrome(test_string));
}

TEST(TestStringPalindrome, NotPalindromeString)
{
    string test_string("abcde");
    EXPECT_EQ(false, isPalindrome(test_string));
}

TEST(TestStringPalindrome, StringWithNumbers)
{
    string test_string("12321");
    EXPECT_EQ(true, isPalindrome(test_string));
}

TEST(TestStringPalindrome, NotPalindromeStringWithNonStandartCharacters)
{
    string test_string("*&%^*$%#(%$AFASKFFKJqrfkafhh1242141246541");
    EXPECT_EQ(false, isPalindrome(test_string));
}

TEST(TestStringPalindrome, SentenseWithWhiteSpaces)
{
    string test_string("Hello olleH");
    EXPECT_EQ(true, isPalindrome(test_string));
}

TEST(TestStringPalindromeWithCaseSensitive, Case1)
{
    string test_string("Hello olleH");
    EXPECT_EQ(true, isPalindrome(test_string, REGISTER_SENSITIVE_YES));
    EXPECT_EQ(true, isPalindrome(test_string, REGISTER_SENSITIVE_NO));
}

TEST(TestStringPalindromeWithCaseSensitive, Case2)
{
    string test_string("Hello olleh");
    EXPECT_EQ(false, isPalindrome(test_string, REGISTER_SENSITIVE_YES));
    EXPECT_EQ(true, isPalindrome(test_string, REGISTER_SENSITIVE_NO));
}

TEST(TestStringPalindromeWithCaseSensitive, Case3)
{
    string test_string("Hello");
    EXPECT_EQ(false, isPalindrome(test_string, REGISTER_SENSITIVE_YES));
    EXPECT_EQ(false, isPalindrome(test_string, REGISTER_SENSITIVE_NO));
}
