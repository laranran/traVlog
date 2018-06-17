package mvc.dao;

import java.util.List;

public interface PaymentDao {
	
	public List getPayList();
	
	public void deletePay();
	
	public void completePay();
	
}