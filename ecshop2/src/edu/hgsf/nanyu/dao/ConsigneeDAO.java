package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Consignee;
import edu.hgsf.nanyu.view.ConsigneeVO;

public interface ConsigneeDAO {
	String SQL_CONSIGNEE_SELECT = "SELECT * FROM CONSIGNEE WHERE CUSTOMER_ID=?";
	String SQL_CONSIGNEE_INSERT = "INSERT INTO CONSIGNEE(CUSTOMER_ID, NAME, ADDRESS, EMAIL, ZIPCODE, "
			+ "MOBILENUM, PHONENUM, SIGNBUILDING, BESTTIME) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	String SQL_CONSIGNEE_SELECT_ONE = "SELECT * FROM CONSIGNEE WHERE CONSIGNEE_ID=?";

	String SQL_CONSIGNEE_DELETE = "DELETE FROM CONSIGNEE WHERE CONSIGNEE_ID=?";

	Consignee selectOne(ConsigneeVO c);

	Consignee select(ConsigneeVO c);

	List<Consignee> selectAll(ConsigneeVO c);

	Consignee select(int customer_id);

	boolean insert(ConsigneeVO c);

	boolean deleteOne(int consignee_id);
}
