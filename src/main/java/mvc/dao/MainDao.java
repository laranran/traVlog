package mvc.dao;

import java.util.ArrayList;

import mvc.dto.Hashtag;

public interface MainDao {

	public ArrayList<Hashtag> topHash();

	public ArrayList<Hashtag> topMember();
}
