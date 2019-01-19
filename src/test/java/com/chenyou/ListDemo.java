package com.chenyou;

import com.alibaba.druid.sql.visitor.functions.Char;
import org.junit.Test;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ListDemo {
    public static void main(String[] args) {
        //数组[1,1,2],去除其中重复的选型
        int[] nums = {1, 1, 2};
        if (nums == null || nums.length == 0) {
            System.out.println(0);
        }
        //定义back
        int back = 0;
        for (int front = 1; front < nums.length; front++) {
            //表示没有重复
            if (nums[back] != nums[front]) {
                back++;
                //将font给back
                nums[back] = nums[front];
            }
        }
        System.out.println(back + 1);

    }
    public static int lengthOfLongestSubstring(String s) {
        int n = s.length();
        int ans = 0;
        for (int i = 0; i < n; i++)
            for (int j = i + 1; j <= n; j++)
                if (allUnique(s, i, j)) ans = Math.max(ans, j - i);
        return ans;
    }


    public static boolean allUnique(String s, int start, int end) {
        Set <Character> set = new HashSet <>();
        for (int i = start; i < end; i++) {
            Character character = s.charAt(i);
            if (set.contains(character)) return false;
            set.add(character);
        }
        return true;
    }

    @Test
    public  void test05(){

    }

}