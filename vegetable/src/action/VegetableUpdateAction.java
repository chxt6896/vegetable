package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import vo.Vegetable;
import weibo4j.examples.WebOAuth;
import weibo4j.http.AccessToken;

import com.opensymphony.xwork2.ActionSupport;

import dao.factory.VegetableDaoFactory;

public class VegetableUpdateAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private Vegetable vegetable = null;
	
	public Vegetable getVegetable() {
		return vegetable;
	}

	public void setVegetable(Vegetable vegetable) {
		this.vegetable = vegetable;
	}

	public String execute(){
		//path:http://localhost:8080/vegetable/imgs/vegetable/007_2.jpg
		//拼接图片路径
		String path = "http://do.jhost.cn/vegetable/imgs/vegetable/" + vegetable.getSid() + ".jpg";
		//String path = "http://vegetable.ip6.jspcn.net/vegetable/imgs/vegetable/" + vegetable.getSid() + ".jpg";
		//String path = "http://localhost:8080/vegetable/imgs/vegetable/" + vegetable.getSid() + ".jpg";
		//获得发布文字内容
		String content = ServletActionContext.getRequest().getParameter("content");
		System.out.println(path);
		System.out.println(content);
		//通过session获得AccessToken
		AccessToken accessToken = (AccessToken) ServletActionContext.getRequest().getSession().getAttribute("accessToken");
		//获得用户的id
		String userId = VegetableDaoFactory.getVegetableDao().getUserId(accessToken);
		//拼接跳转回当前用户微博页面的路径
		String backPath = "http://weibo.com/" + userId;
		//获取request对像并存贮backPath
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("backPath", backPath);
		//调用WebOAuth的静态函数uploadStatus发布微博
		if(WebOAuth.uploadStatus(accessToken, content, path)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
