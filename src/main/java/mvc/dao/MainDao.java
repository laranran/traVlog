package mvc.dao;

import java.util.ArrayList;

import mvc.dto.Hashtag;
import mvc.dto.Member;
import mvc.dto.FollowingRec;

public interface MainDao {

	public ArrayList<Hashtag> topHash();

	public ArrayList<Member> topMember();

	public ArrayList<FollowingRec> recMember(String memid);

	public int countRecMember(String memid);

	public ArrayList<FollowingRec> follower(String memid);
	
	public int countFolMember(String memid);

	public ArrayList<FollowingRec> admin();
	
}
