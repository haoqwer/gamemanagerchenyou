package com.chenyou.poi;


import com.chenyou.utils.MD5Utils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.junit.Test;
import sun.security.provider.MD5;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

public class PoiTest {

    @Test
    public void test_createExcel() throws IOException {
        HSSFWorkbook wb = new HSSFWorkbook();
        FileOutputStream fileout = new FileOutputStream("workbook.xls");
        wb.write(fileout);
        fileout.close();
    }

    @Test
    public void test_createShhetPage() throws IOException {
        //创建sheet页
        HSSFWorkbook wb = new HSSFWorkbook();
        FileOutputStream fileout = new FileOutputStream("workbook.xls");
        HSSFSheet sheet1 = wb.createSheet("第一页");
        HSSFSheet sheet2 = wb.createSheet("第二页");
        wb.write(fileout);
        fileout.close();
    }

    @Test
    public void test_createCell() throws IOException {
        //创建单元格
        //创建xls
        HSSFWorkbook wb = new HSSFWorkbook();
        FileOutputStream fileout = new FileOutputStream("workbook.xls");
        CreationHelper createHelper = wb.getCreationHelper();
        HSSFSheet sheet1 = wb.createSheet("第一页");
        HSSFSheet sheet2 = wb.createSheet("第二页");
        //创建行
        HSSFRow row = sheet1.createRow(0);
        //创建单元格
        HSSFCell cell = row.createCell(0);
        //给单元格加入内容
        cell.setCellValue( createHelper.createRichTextString("创建了第一个单元格"));
        row.createCell(1).setCellValue(1.2);
        row.createCell(2).setCellValue(
                createHelper.createRichTextString("This is a string"));
        row.createCell(3).setCellValue(true);
        wb.write(fileout);
        fileout.close();
    }


    @Test
    public void test_dateTimeFormat() throws IOException {
        //创建一个时间格式的单元格
        Workbook wb=new HSSFWorkbook();
        CreationHelper createHelper = wb.getCreationHelper();
        FileOutputStream fos=new FileOutputStream("date.xls");
        Sheet sheet = wb.createSheet("创建一个时间格式的单元格");
        //创建一个行
        Row row =sheet.createRow(0);
        //创建一个单元格，并设置值
        Cell cell = row.createCell(0);
        //设置值
        //但是excel显示出来的并不是一个时间格式而是一个值43353.435950544
        cell.setCellValue(new Date());
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setDataFormat(createHelper.createDataFormat().getFormat("m/d/yy h:mm"));
        Cell cell1 = row.createCell(1);
        cell = row.createCell(2);
        cell.setCellValue(Calendar.getInstance());
        cell.setCellStyle(cellStyle);
        cell1.setCellValue(new Date());
        cell1.setCellStyle(cellStyle);
        //使用poi将文件读取出来
        wb.write(fos);
        fos.close();
    }

    /**
     * 处理不同格式的
     * @throws IOException
     */
    @Test
    public  void test_different() throws IOException {
        Workbook wb = new HSSFWorkbook();
        Sheet sheet = wb.createSheet("new sheet");
        Row row = sheet.createRow((short) 2);
        row.createCell(0).setCellValue(1.1);
        row.createCell(1).setCellValue(new Date());
        row.createCell(2).setCellValue(Calendar.getInstance());
        row.createCell(3).setCellValue("a string");
        row.createCell(4).setCellValue(true);
        row.createCell(5).setCellType(HSSFCell.CELL_TYPE_ERROR);
        //将输出流写入一个文件
        FileOutputStream fileOut = new FileOutputStream("workbook.xls");
        wb.write(fileOut);
        fileOut.close();
    }




    @Test
    public  void test_foreach() throws IOException {
        //遍历单元格
        Workbook wb=new HSSFWorkbook(new FileInputStream("workbook.xls"));
        Sheet sheet = wb.getSheetAt(0);
        for(Row   row :sheet){
            System.out.println(row.getCell(0).getStringCellValue());
        }
    }

    @Test
    public  void test_equal(){
        String s="123456";
        String s1 = MD5Utils.md5(s);
        String s2 = MD5Utils.md5(s);
        if(s1.equals(s2)){
            System.out.println("-------");
        }


    if("e10adc3949ba59abbe56e057f20f883e".equals("e10adc3949ba59abbe56e057f20f883e")){
        System.out.println("----");
    }
    }




}
