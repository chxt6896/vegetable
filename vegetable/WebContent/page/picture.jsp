<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.ByteArrayOutputStream, java.io.FileInputStream, java.io.FileOutputStream, java.awt.*, java.awt.image.*, com.sun.image.codec.jpeg.*, java.util.*, weibo4j.examples.WebOAuth, weibo4j.examples.Search,java.util.List,weibo4j.Suggestions,weibo4j.*,weibo4j.http.*"%>
	<%
		out.clear();
		AccessToken accessToken=(AccessToken)session.getAttribute("accessToken");
	
		response.addHeader("pragma","NO-cache");
		response.addHeader("Cache-Control","no-cache");
		response.addDateHeader("Expries",0);
		String FileName = "C:\\Users\\Chxt\\Desktop\\41.jpg";
		String FileName2 = "C:\\Users\\Chxt\\Desktop\\huyifei.png";
		
		//创建一个FileInputStream对象从源图片获取数据流     
		FileInputStream sFile = new FileInputStream(FileName);
		//创建一个Image对象并以源图片数据流填充  
		Image src = javax.imageio.ImageIO.read(sFile);
		int width = src.getWidth(null); //得到源图宽    
		int height = src.getHeight(null); //得到源图长   
		if (width>70 && height>30){
			//创建一个BufferedImage来作为图像操作容器      
			BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			//创建一个绘图环境来进行绘制图象   
			Graphics g = image.getGraphics();
			//将原图像数据流载入这个BufferedImage      
			g.drawImage(src,0,0,width,height,null);
			//设定文本字体       
			g.setFont(new Font("宋体",Font.PLAIN,48));
			//设定文本    
			String rand = "中国123";
			//设定文本颜色        
			g.setColor(Color.black);
			//向BufferedImage写入文本字符   
			g.drawString(rand,200,500);
			
			sFile = new FileInputStream(FileName2);
			src = javax.imageio.ImageIO.read(sFile);
			width = src.getWidth(null); //得到源图宽    
			height = src.getHeight(null); //得到源图长  
			g.drawImage(src, 365, 25, width, height, null); // 靠左上绘制，x和y都是10
			
			//使更改生效   
			g.dispose();
			//创建byte数组输出流    
			ByteArrayOutputStream os = new ByteArrayOutputStream(); 
			//创建JPEG编码对象    
			JPEGImageEncoder encodera = JPEGCodec.createJPEGEncoder(os);
			//对这个BufferedImage (image)进行JPEG编码
			encodera.encode(image);
			//获得合成图片的byte数组内容
			byte[] data = os.toByteArray(); 
			//调用uploadStatus2方法发送
			WebOAuth.uploadStatus2(accessToken, "通过缓存发送合成图片成功", data);
			os.close(); //关闭输出文件流
		}
		
	%>