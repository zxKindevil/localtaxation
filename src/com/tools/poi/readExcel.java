package com.tools.poi;

import com.ibatis.bean.queryPBT;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/**读取Excel每行每列的值
 * @author Kindevil
 *
 */
public class readExcel {
	public static void main(String[] args) {
		readExcel excel=new readExcel();
		List<queryPBT> list_pbt=excel.read();
		System.out.println(list_pbt.size());
	}
	
	private String FILEPATH="C:\\Users\\Kindevil\\Desktop\\二分局数据表.xls";
	private List<queryPBT> list_pbt = new ArrayList<queryPBT>();
	
	public readExcel(){
	}
	
	public readExcel(String path){
		FILEPATH=path;
	}
	
	public List<queryPBT> read() {
		try {
			InputStream in=new FileInputStream(FILEPATH);
			POIFSFileSystem fs=new POIFSFileSystem(in);
			HSSFWorkbook wb=new HSSFWorkbook(fs);
			HSSFSheet hssfSheet=wb.getSheetAt(0); //得到页
		
			if(hssfSheet==null){
				System.out.println("没有页");
				return list_pbt;
			}
			
			// map_field 选取excel列
			//读取excel到bean属性映射
			Map<String,Integer> map_field=new HashMap<String,Integer>();
			HSSFRow field=hssfSheet.getRow(0);
			for(int icol=0;icol<=field.getLastCellNum();icol++){
				HSSFCell cell=field.getCell(icol);
				if(cell==null){
					continue;
				}
				map_field.put(getValue(cell), icol);
			}
			
			//读取内容Row
			//得到bean属性反射设值map
			Map<String,String> map_values=new HashMap<String,String>();
			for(int irow=2;irow<=hssfSheet.getLastRowNum();irow++){
				HSSFRow row=hssfSheet.getRow(irow);
				
				if(row==null){
					continue;
				}
				
				HSSFCell p_property_owner=row.getCell(map_field.get("p_property_owner"));
				if( null == p_property_owner || getValue(p_property_owner).trim().equals("") ){
					continue;
				}
				
				for(Entry<String,Integer> it : map_field.entrySet()){
					HSSFCell cell=row.getCell(it.getValue());
					if(cell==null){
						continue;
					}
					map_values.put(it.getKey(),getValue(cell));
				}
				queryPBT pbt=new queryPBT();
				new ReflectMatch().setValue(pbt, map_values);
				list_pbt.add(pbt);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("导入错误");
			return list_pbt;
		}
		return list_pbt;
	}
	
	/**Excel 辅助类
	 * @param hssfCell
	 * @return
	 */
	private String getValue(HSSFCell hssfCell){
		if(hssfCell.getCellType()==HSSFCell.CELL_TYPE_BOOLEAN){
			return String.valueOf(hssfCell.getBooleanCellValue());
		}else if(hssfCell.getCellType()==HSSFCell.CELL_TYPE_NUMERIC){
			return String.valueOf(hssfCell.getNumericCellValue());
		}else{
			return String.valueOf(hssfCell.getStringCellValue());
		}
	}
	
	public boolean divideToBean(List<queryPBT> list){
		boolean ret=true;
		
		for(int i=0;i<list.size();i++){
			queryPBT ipbt=list.get(i);
			System.out.println();
		}
		
		return ret;
	}
}

