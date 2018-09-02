package com.zhidisoft.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/*
 * 日期类型转换器
 */
public class DateConverter implements Converter<String, Date>{
	@Override
	public Date convert(String dateStr) {
		Date date =  null;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			date = simpleDateFormat.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}		
		return date;
	}
}
