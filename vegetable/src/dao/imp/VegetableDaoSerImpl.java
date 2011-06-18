package dao.imp;

import constance.VegetableEnum;

import vo.Vegetable;
import weibo4j.User;
import weibo4j.Weibo;
import weibo4j.WeiboException;
import weibo4j.http.AccessToken;
import dao.dao.VegetableDao;

public class VegetableDaoSerImpl implements VegetableDao {
	
	public String getSIdById(String id) {
		//id的格式为"001_1"
		//sid的格式为"001_2"
		String sid;
		sid = id.substring(0, 4) + "2";
		return sid;
	}
	
	public String getVIdById(String id) {
		//id的格式为"001_1"
		//vid的格式为"001"
		String vid;
		vid = id.substring(0, 3);
		return vid;
	}
	
	public Vegetable getVegetableById(String id) {
		Vegetable v = new Vegetable();
		String vid = this.getVIdById(id);
		String sid = this.getSIdById(id);
		for (VegetableEnum vegetable:VegetableEnum.values()){
			if(vegetable.getVid().equals(vid)){
				v.setSid(sid);
				v.setVid(vid);
				v.setName(vegetable.getName());
				v.setNames(vegetable.getNames());
				v.setTechang(vegetable.getTechang());
				v.setAihao(vegetable.getAihao());
				v.setDemo(vegetable.getDemo());
			}
		}
		return v;
	}

	public String getUserId(AccessToken access) {
		User user = null;
		try {
			user = getWeibo(true, access).verifyCredentials();
			//System.out.println(user.toString());
			//System.out.println(user.getName()+":"+user.getScreenName());
		} catch (WeiboException e) {
			e.printStackTrace();
		}
		return Integer.toString(user.getId());
	}

	public Weibo getWeibo(boolean isOauth, AccessToken access) {
		Weibo weibo = new Weibo();
		if(isOauth) {//oauth验证方式 args[0]:访问的token；args[1]:访问的密匙
			weibo.setToken(access.getToken(), access.getTokenSecret());
		}else {//用户登录方式
    		weibo.setUserId(access.getToken());//用户名/ID
    		weibo.setPassword(access.getTokenSecret());//密码
		}
		return weibo;
	}
}
