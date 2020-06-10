package com.pageturner.www.util;
/**
 *	이 클래스는 모든 알람 리스트를 불러와서 최신순으로 정렬하여 제공하는 클래스이다.
 *	@author	박기윤
 *	@since 2020.05.27
 */
import com.pageturner.www.dao.*;
import com.pageturner.www.vo.*;
import java.util.*;
import java.util.Date;
import java.text.*;

public class Alarm {
	public ArrayList<AlarmVO> alarmList;
	SimpleDateFormat form;
	
	public Alarm() {}
	public Alarm(String id) {
		MyPageDAO mDAO = new MyPageDAO(id);
		alarmList = new ArrayList<AlarmVO>();
		form = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		ArrayList<AlarmVO> likeList = mDAO.getLikeAlarm();
		ArrayList<AlarmVO> falList = mDAO.getFalAlarm();
		ArrayList<AlarmVO> comntList = mDAO.getComntAlarm();
		
		for (int i = 0; i < likeList.size(); i++) {
			alarmList.add(likeList.get(i));
		}
		
		for (int i = 0; i < falList.size(); i++) {
			alarmList.add(falList.get(i));
		}
		
		for (int i = 0; i < comntList.size(); i++) {
			alarmList.add(comntList.get(i));
		}
		
		alarmList.sort(new Comparator<AlarmVO>() {

			@Override
			public int compare(AlarmVO o1, AlarmVO o2) {
				Date day1 = null;
				Date day2 = null;
				try {
					day1 = form.parse(o1.getExtime());
					day2 = form.parse(o2.getExtime());
				} catch (Exception e) {
					e.printStackTrace();
				}
				return day2.compareTo(day1);
			}
		});
	}
}