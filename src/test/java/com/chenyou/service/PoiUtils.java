package com.chenyou.service;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.FileOutputStream;
import java.io.IOException;

public class PoiUtils {
    public static void main(String[] args) throws IOException {
        Workbook wb = new XSSFWorkbook(); //或者是 new HSSFWorkbook();
        Sheet sheet = wb.createSheet();
        Row row = sheet.createRow((short) 2);
        row.setHeightInPoints(30);
        createCell(wb, row, (short) 0, XSSFCellStyle.ALIGN_CENTER,
                XSSFCellStyle.VERTICAL_BOTTOM);
        createCell(wb,  row,  (short)  1,
                XSSFCellStyle.ALIGN_CENTER_SELECTION,
                XSSFCellStyle.VERTICAL_BOTTOM);
        createCell(wb, row, (short) 2, XSSFCellStyle.ALIGN_FILL,
                XSSFCellStyle.VERTICAL_CENTER);
        createCell(wb, row, (short) 3, XSSFCellStyle.ALIGN_GENERAL,
                XSSFCellStyle.VERTICAL_CENTER);
        createCell(wb, row, (short) 4, XSSFCellStyle.ALIGN_JUSTIFY,
                XSSFCellStyle.VERTICAL_JUSTIFY);
        createCell(wb, row, (short) 5, XSSFCellStyle.ALIGN_LEFT,
                XSSFCellStyle.VERTICAL_TOP);
        createCell(wb, row, (short) 6, XSSFCellStyle.ALIGN_RIGHT,
                XSSFCellStyle.VERTICAL_TOP);
//将输出流写入一个文件
        FileOutputStream fileOut  =  new
                FileOutputStream("workbook.xls");
        wb.write(fileOut);
        fileOut.close();
    }
//    **
//            *创建一个单元格并为其设定指定的对齐方式.
//*
//        * @param wb 工作簿
//* @param row 单元格所在的列
//* @param column 单元格所在的行索引号
//* @param halign 单元格的水平对齐方式.
//            */
    private static void createCell(Workbook wb, Row row, short column,
                                   short halign, short valign) {
        Cell cell = row.createCell(column);
        cell.setCellValue(new XSSFRichTextString("Align It"));
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(halign);
        cellStyle.setVerticalAlignment(valign);
        cell.setCellStyle(cellStyle);
    }
}
