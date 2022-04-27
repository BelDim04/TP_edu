//
// Created by akhtyamovpavel on 5/1/20.
//

#include "AddTestCase.h"
#include "Functions.h"
#include <gtest/gtest.h>

TEST(AddTest, BaseSumTest){
    ASSERT_EQ(15, Add(7, 8));
}
