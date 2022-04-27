//
// Created by akhtyamovpavel on 5/1/20.
//

#include "LeapTestCase.h"

#include <Functions.h>

#include <gtest/gtest.h>

TEST(IsLeapTest, BoolAnsTest){
    ASSERT_TRUE(IsLeap(2000));
    ASSERT_FALSE(IsLeap(1900));
    ASSERT_TRUE(IsLeap(2016));
    ASSERT_FALSE(IsLeap(2017));
}

TEST(GetMonthDaysTest, DaysAnsTest){
    ASSERT_EQ(29, GetMonthDays(2000, 2));
    ASSERT_EQ(28, GetMonthDays(2017, 2));
    ASSERT_EQ(30, GetMonthDays(2022, 11));
    ASSERT_EQ(31, GetMonthDays(2022, 10));
}

TEST(IsLeapTest, ThrowTest){
    ASSERT_ANY_THROW(IsLeap(-7));
}

TEST(GetMonthDaysTest, ThrowTest){
    ASSERT_ANY_THROW(GetMonthDays(1, 13));
}
