package com.chenyou;

import com.graphbuilder.math.func.AtanFunction;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-25 18:19
 * @Version: 1.0
 **/
public class RemoveElement {
    public static void main(String[] args) {
// &attach=10048,10,1312,5,1309,10,1333,30&type=1&uids=node_360_1
        Attach attach1 = new Attach();
        attach1.setPropId(1);
        attach1.setPropCount(100);
        Attach attach2 = new Attach();
        attach2.setPropId(2);
        attach2.setPropCount(200);
        Attach attach3 = new Attach();
        attach3.setPropId(3);
        attach3.setPropCount(300);
        Attach attach5 = new Attach();
        attach5.setPropId(4);
        attach5.setPropCount(400);
        List<Attach> list=new ArrayList<>();
        list.add(attach1);
        list.add(attach2);
        list.add(attach3);
        list.add(attach5);
        String attach="";
       for(int i=0;i<list.size();i++){
           if(list.size()==1){
                attach=list.get(i).getPropId()+","+list.get(i).getPropCount();
           }else {
               if(list.size()-1==i){
                   attach=attach+list.get(i).getPropId()+","+list.get(i).getPropCount();
               }else {
                   attach=attach+list.get(i).getPropId()+","+list.get(i).getPropCount()+",";
               }
           }
       }
        System.out.println(attach);
    }


}
