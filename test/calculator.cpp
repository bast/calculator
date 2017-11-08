// provides unit testing infrastructure
#include "gtest/gtest.h"

// provides add_integers, subtract_integers
#include "calculator.h"

TEST(calculator, add)
{
    int res;
    res = add_integers(2, 3);
    ASSERT_EQ(res, 5);
}

TEST(calculator, subtract)
{
    int res;
    res = subtract_integers(2, 3);
    ASSERT_EQ(res, -1);
}
