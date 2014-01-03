#include "../src/Palindrome.h"
#include <gtest/gtest.h>
#include <vector>
using std::vector;

TEST(TestVectorPalindrome, vector12345)
{
    const int SIZE = 5;
    int a[SIZE] = {1, 2, 3, 4, 5};
    vector<int> v(a, a + SIZE);
    EXPECT_EQ(false, isPalindrome<int>(v));
}

TEST(TestVectorPalindrome, vector12321)
{
    const int SIZE = 5;
    int a[SIZE] = {1, 2, 3, 2, 1};
    vector<int> v(a, a + SIZE);
    EXPECT_EQ(true, isPalindrome<int>(v));
}

TEST(TestVectorPalindrome, vector1)
{
    const int SIZE = 1;
    int a[SIZE] = {1};
    vector<int> v(a, a + SIZE);
    EXPECT_EQ(true, isPalindrome<int>(v));
}

TEST(TestVectorPalindrome, vector1221)
{
    const int SIZE = 4;
    int a[SIZE] = {1, 2, 2, 1};
    vector<int> v(a, a + SIZE);
    EXPECT_EQ(true, isPalindrome<int>(v));
}

TEST(TestVectorPalindrome, vectorNullSize)
{
    vector<int> v;
    EXPECT_EQ(false, isPalindrome<int>(v));
}

TEST(TestVectorPalindrome, vectorWord1)
{
    const int SIZE = 4;
    char word[SIZE + 1] = "ollo"; // '\0' in the end;
    vector<int> v(word, word + SIZE);
    EXPECT_EQ(true, isPalindrome<int>(v));
}
