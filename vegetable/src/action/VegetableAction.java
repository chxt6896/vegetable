package action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import vo.Vegetable;

import com.opensymphony.xwork2.ActionSupport;

import dao.factory.VegetableDaoFactory;

public class VegetableAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private Vegetable vegetable = null;
	
	public Vegetable getVegetable() {
		return vegetable;
	}

	public void setVegetable(Vegetable vegetable) {
		this.vegetable = vegetable;
	}

	public String execute(){
		String id = vegetable.getId();
		Vegetable v = VegetableDaoFactory.getVegetableDao().getVegetableById(id);
		
		Map<String, Object> sessionMap = ServletActionContext.getContext().getSession();
		sessionMap.put("vegetable", v);
		
		if(id.equals("019_1")){
			return "hate";
		}else if(id.equals("020_1")){
			return "like";
		}else{
			return SUCCESS;
		}
	}

}
