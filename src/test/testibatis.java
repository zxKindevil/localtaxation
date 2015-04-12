package test;

import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;

import com.ibatis.bean.business;

public class testibatis {
	public static void main(String[] args) throws IntrospectionException {
		listPropertyNames(business.class);
	}
	
	public static void listPropertyNames(Class c) throws IntrospectionException{
		PropertyDescriptor[] pd;
		pd=Introspector.getBeanInfo(c).getPropertyDescriptors();
		for(int i=0;i<pd.length;i++){
			System.out.println(pd[i].getName()+"  "
					+pd[i].getPropertyType().getName()
					);
		}
	}
}
