package com.pageturner.www.util;

import java.util.*;
import com.pageturner.www.vo.*;
import java.text.*;

public class PostsSortByTime {
	SimpleDateFormat form;

	public PostsSortByTime() {
		form = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	}

	public ArrayList<PostsVO> sortByTime(ArrayList<PostsVO> list) {
		list.sort(new Comparator<PostsVO>() {

			@Override
			public int compare(PostsVO o1, PostsVO o2) {
				Date day1 = null;
				Date day2 = null;
				try {
					day1 = form.parse(o1.getPdate());
					day2 = form.parse(o2.getPdate());
				} catch (Exception e) {
					e.printStackTrace();
				}
				return day2.compareTo(day1);
			}
		});

		return list;
	}
}