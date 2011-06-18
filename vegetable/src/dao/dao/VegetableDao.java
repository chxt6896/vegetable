package dao.dao;

import vo.Vegetable;
import weibo4j.Weibo;
import weibo4j.http.AccessToken;

public interface VegetableDao {
	
	/**
	 * 根据蔬菜主页Id得到蔬菜单页Id
	 * @return
	 */
	public String getSIdById(String id);
	
	/**
	 * 根据蔬菜的主页Id得到蔬菜的序号VId
	 * @param id
	 * @return
	 */
	public String getVIdById(String id);
	
	/**
	 * 根据蔬菜主页Id获得蔬菜对象
	 * @param id
	 * @return
	 */
	public Vegetable getVegetableById(String id);
	
	public String getUserId(AccessToken access);
	
	public Weibo getWeibo(boolean isOauth, AccessToken access);
}
