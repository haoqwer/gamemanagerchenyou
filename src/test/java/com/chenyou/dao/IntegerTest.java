package com.chenyou.dao;

import org.junit.Test;

public class IntegerTest {


    @Test
    public void test_IntegerEqual() {
        Integer i1 = 17;
        Integer i2 = 17;
        Integer i3 = 137;
        Integer i4 = 137;
        System.out.println(i1 == i2);
        System.out.println(i3 == i4);
    }

    @Test
    public void test_IntegerDevanning() {
        //自动拆箱Integer类型会自动转换为8种基本类型，调用Integer.intValue
        Integer i1 = 17;
        Integer i2 = 17;
        int i3 = 137;
        Integer i4 = 137;
        System.out.println(i1 == i2);
        System.out.println(i3 == i4);
    }

    @Test
    public void test_IntegerEquals(){
        Integer i1=17;
        Integer i2=17;
        Integer i3=137;
        Integer i4=137;
        System.out.println(i1==i2);
        System.out.println(i3==i4);
        System.out.println(i1.equals(i2));
        //equal比较会进行拆箱，所以两个Integer比较是一样的
        System.out.println(i3.equals(i4));
    }

    @Test
    public void test_Integer(){
        Integer a = 1;
        Integer b = 2;
        Integer c = 3;
        Integer d = 3;
        Integer e = 321;
        Integer f = 321;
        Long g = 3L;
        Long h = 2L;

// 会自动拆箱（会调用intValue方法）
        System.out.println(c == d);
// 会自动拆箱后再自动装箱
        System.out.println(e == f);
// 虽然“==”比较的是引用的是否是同一对象，但这里有算术运算，如果该引用为包装器类型则会导致自动拆箱
        System.out.println(c == (a + b));
// equals 比较的是引用的对象的内容（值）是否相等，但这里有算术运算，如果该引用为包装器类型则会导
        // 致自动拆箱，再自动装箱
// a+b触发自动拆箱得到值后，再自动装箱与c比较
        System.out.println(c.equals(a + b));
// 首先a+b触发自动拆箱后值为int型，所以比较的是值是否相等
        System.out.println(g == (a + b));
// 首先a+b触发自动拆箱后值为int型，自动装箱后为Integer型，然后g为Long型
        System.out.println(g.equals(a + b));
// 首先a+h触发自动拆箱后值为long型，因为int型的a会自动转型为long型的g然后自动装箱后为Long型，
        // 而g也为Long型
        System.out.println(g.equals(a + h));
    }
}
