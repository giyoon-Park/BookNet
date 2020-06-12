package com.pageturner.www.util;

import java.util.*;
import java.text.*;

public class CountDays {
	Date date;
	SimpleDateFormat form;
	
	public CountDays() {
		this(new Date());
	}
	
	public CountDays(Date date) {
		this.date = date;
		form = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	}
	
	public Date parseDate(String cdate) throws Exception {
		Date ddate = form.parse(cdate);
		return ddate;
	}
	
	public String countDdays(Date ddate) {
		String diffTime = null;
		long diffMillSec = date.getTime() - ddate.getTime();
		long diffSec = diffMillSec / 1000;
		long diffMin = diffSec / 60;
		long diffHour = diffMin / 60;
		long diffDay = diffHour / 24;
		long diffWeek = diffDay / 7;
		long diffMonth = (long)(diffDay / 30.41666666);
		long diffYear = diffDay / 365;
		
		if(diffSec < 1) {
			diffTime = "1초 미만";
		} else if (diffMin < 1) {
			diffTime = "방금전";
		} else if (diffHour < 1) {
			diffTime = diffMin + "분전";
		} else if (diffDay < 1) {
			diffTime = diffHour + "시간전";
		} else if (diffWeek < 1) {
			diffTime = diffDay + "일전";
		} else if (diffMonth < 1) {
			diffTime = diffWeek + "주전";
		} else if (diffYear < 1) {
			diffTime = diffMonth + "개월전";
		} else {
			diffTime = diffYear + "년전";
		}
		
		return diffTime;
	}
}