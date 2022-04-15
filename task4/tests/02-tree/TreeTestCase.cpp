//
// Created by akhtyamovpavel on 5/1/20.
//


#include "TreeTestCase.h"
#include "Tree.h"
#include <gtest/gtest.h>
#include <string>
#include <filesystem>
#include <fstream>

TEST(GetTreeTest, ThrowTest){
    path testPath = std::filesystem::current_path()/"testFolder";
    create_directory(testPath);
    std::ofstream testFile(testPath/"test.txt");
    testFile.close(); 
    ASSERT_ANY_THROW(GetTree("vsdjchsdvvahvwubjbl", true));
    ASSERT_ANY_THROW(GetTree(std::string(testPath/"test.txt"), true));
    remove_all(testPath);
}

TEST(GetTreeTest, AnsTest){
    path testPath = std::filesystem::current_path()/"testFolder";
    create_directory(testPath);
    create_directory(testPath/"test1Folder");
    std::ofstream testFile(testPath/"test1Folder"/"test.txt");
    testFile.close();
    FileNode answer;
    answer.name = std::filesystem::path(testPath).filename().string();
    answer.is_dir = true;
    FileNode fold1;
    fold1.name = std::filesystem::path(testPath/"test1Folder").filename().string();
    fold1.is_dir = true;
    answer.children.push_back(fold1);
    ASSERT_EQ(answer, GetTree(std::string(testPath), true));
    FileNode file;
    file.name = std::filesystem::path(testPath/"tset1Folder"/"test.txt").filename().string();
    file.is_dir = false;
    fold1.children.push_back(file);
    FileNode answer2;
    answer2.name = std::filesystem::path(testPath).filename().string();
    answer2.is_dir = true;
    answer2.children.push_back(fold1);
    ASSERT_EQ(answer2, GetTree(std::string(testPath), false));
    remove_all(testPath);
}

TEST(FilterEmptyNodesTest, TestNoThrow){
    path testPath = std::filesystem::current_path()/"testFolder";
    create_directory(testPath);
    create_directory(testPath/"test1Folder");
    create_directory(testPath/"test2Folder");
    std::ofstream testFile(testPath/"test1Folder"/"test.txt");
    testFile.close();
    ASSERT_NO_THROW(FilterEmptyNodes(GetTree(std::string(testPath), false), testPath));
    remove_all(testPath);
}

