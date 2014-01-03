#include "../src/StringServices.h"
#include "src/StringServices.h"
#include <gtest/gtest.h>
#include <string>
using std::string;

TEST(TestStringServices, charToLowerCaseA)
{
    char c = 'A';
    charToLowerCase(c);
    EXPECT_EQ('a', c);
}

TEST(TestStringServices, charToLowerCasea)
{
    char c = 'a';
    charToLowerCase(c);
    EXPECT_EQ('a', c);
}

TEST(TestStringServices, charToLowerCaseC)
{
    char c = 'C';
    charToLowerCase(c);
    EXPECT_EQ('c', c);
}

TEST(TestStringServices, charToLowerCasec)
{
    char c = 'c';
    charToLowerCase(c);
    EXPECT_EQ('c', c);
}

TEST(TestStringServices, charToLowerCaseNumber)
{
    char c = '4';
    charToLowerCase(c);
    EXPECT_EQ('4', c);
}

TEST(TestStringServices, charToLowerCaseSymbol)
{
    char c = '%';
    charToLowerCase(c);
    EXPECT_EQ('%', c);
}

TEST(TestStringServices, stringToLowerCaseCase1)
{
    EXPECT_EQ("hello! how are you?", 
              stringToLowerCase(string("Hello! How are you?")));
    EXPECT_EQ("wassup!!!12346789", 
              stringToLowerCase(string("wassup!!!12346789")));
    EXPECT_EQ("124535315636#@%*(&@%#^@%&*!#", 
              stringToLowerCase(string("124535315636#@%*(&@%#^@%&*!#")));
    EXPECT_EQ("a", 
              stringToLowerCase(string("A")));
    EXPECT_EQ("", 
              stringToLowerCase(string("")));
}


