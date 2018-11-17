package com.chenyou;

public class ListDemo {
    public static void main(String[] args) {
        String uids = "12,13,25,26,27,17";
        String[] uuids = uids.split(",");
        for (String uid : uuids) {
            System.out.println(uid);
        }
    }
}

