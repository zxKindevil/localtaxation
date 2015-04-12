package com.tools;

import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import com.ibatis.bean.queryPBT;

public class tools {
	public static void main(String[] args) {
		System.out.println(tools.date_javaToDB(new Date()));
	}
	
	/**
	 * SpringMVC controller 返回成功失败页面
	 * @param ret
	 * @return
	 */
	public static String result(boolean ret){
		if(ret) return "result/success";
		else return "result/fail";
	}
	
	/**
	 * mm/dd/yyyy格式转yyyy-mm-dd
	 * @param date
	 * @return
	 */
	public static String date_uiToDB(String date){
		StringBuilder ret=new StringBuilder("");
		String[] strs=date.split("/");
		ret.append(strs[2]);
		ret.append("-");
		ret.append(strs[0]);
		ret.append("-");
		ret.append(strs[1]);
		return ret.toString();
	}
	
	/**
	 * Java Date格式转yyyy-mm-dd 00:00:00
	 * @param date
	 * @return
	 */
	public static String date_javaToDB(Date date){
		DateFormat formater=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ret=formater.format(date);
		return ret;
	}
	
	/**Test POI don't use first
	 * @return
	 */
	public static boolean toExcel(List<queryPBT> list_pbt) {
		boolean ret=true;
		Workbook wb=new HSSFWorkbook();
		
		try {
			FileOutputStream fileOut=new FileOutputStream("C:\\Users\\Kindevil\\Desktop\\test.xls");
			
			//write to Excel 
			int rowIndex=0;
			Sheet sheet=wb.createSheet();
			Row row=sheet.createRow(rowIndex++);
			
			for(int i=0;i<list_pbt.size();i++){
				row=sheet.createRow(i);
				row.createCell(0).setCellValue( list_pbt.get(0).getB_business_owner() );
			}
			
			wb.write(fileOut);
			fileOut.close();
		} catch (Exception e) {
			e.printStackTrace();
			ret=false;
		}
		
		return ret;
	}
}
