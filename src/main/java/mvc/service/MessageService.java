package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MessageDao;

import mvc.dto.Message;

@Service
public class MessageService {
	
	@Autowired 
	MessageDao messageDao;

	
	public List getMessageList() {
		System.out.println("리스트 : ");
		return messageDao.getMessageList();
	}

	public List getMessageDetail(Message message) {
		return messageDao.getMessageDetail(message);
	}
	
	public List sentMessageList() {
		System.out.println("리스트 : ");
		return messageDao.sentMessageList();
	}

	
	
	
	
}