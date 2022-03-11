#include <gtest/gtest.h>
#include "A/index.h"
#include "B/lib.h"

TEST(test_index, is_empty)
{
	ASSERT_GT(S.size(), 0) << "S is empty";
}

TEST(test_lib, is_correct)
{
	ASSERT_EQ(len_of_string(S), S.size()) << "Fun is wrong";
}
