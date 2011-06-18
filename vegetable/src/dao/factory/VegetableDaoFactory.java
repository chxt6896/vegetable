package dao.factory;

import dao.dao.VegetableDao;
import dao.imp.VegetableDaoSerImpl;

public class VegetableDaoFactory {
	
	public static VegetableDao getVegetableDao(){
		return new VegetableDaoSerImpl();
	}
}
