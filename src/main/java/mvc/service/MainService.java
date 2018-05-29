package mvc.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dto.Hashtag;
import mvc.dao.MainDao;

@Service
public class MainService {
	@Autowired MainDao mainDao;
	

	public ArrayList<Hashtag> topHash() {
		return mainDao.topHash();
	}


	public ArrayList<Hashtag> topMember() {
		return mainDao.topMember();
	}
}
