package mvc.dao;

import java.util.List;

import mvc.dto.Message;

public interface MessageDao {

	public List getMessageList(String yourId);

	public List getMessageDetail(Message message);

	public void sendingmessage(Message message);
	
	public List sentMessageList(String myId);
	
	
}