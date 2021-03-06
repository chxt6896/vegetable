/**
 * 
 */
package weibo4j.examples.user;

import java.io.UnsupportedEncodingException;

import weibo4j.User;
import weibo4j.Weibo;
import weibo4j.WeiboException;
import weibo4j.http.AccessToken;

/**
 * @author sina
 *
 */
public class GetUserInfo {

	/**
	 * 根据用户ID获取用户资料（授权用户） 
	 * @param args
	 * @throws UnsupportedEncodingException 
	 */
	public static void main(String[] args) throws UnsupportedEncodingException {
		System.setProperty("weibo4j.oauth.consumerKey", Weibo.CONSUMER_KEY);
    	System.setProperty("weibo4j.oauth.consumerSecret", Weibo.CONSUMER_SECRET);
		try {
			String screen_name="浩宇啸天";
			String s=java.net.URLEncoder.encode(screen_name, "utf-8");
			User user = getWeibo(false,args).showUser(s);
			System.out.println(user.toString());
		} catch (WeiboException e) {
			e.printStackTrace();
		}
	}
	
	private static Weibo getWeibo(boolean isOauth,String[] args) {
		Weibo weibo = new Weibo();
		if(isOauth) {//oauth验证方式 args[0]:访问的token；args[1]:访问的密匙
			weibo.setToken(args[0], args[1]);
		}else {//用户登录方式
    		weibo.setUserId(args[0]);//用户名/ID
    		weibo.setPassword(args[1]);//密码
		}
		return weibo;
	}
	
	public static Weibo getWeibo(boolean isOauth, AccessToken access) {
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
