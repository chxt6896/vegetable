package action;

import com.sun.image.codec.jpeg.*;
import java.awt.*;
import java.awt.image.*;
import java.io.*;
import javax.swing.*;

public class WaterMarkDemo {
	// 为了例子简单，暂时用固定的文件名。
	private static final String FILEINPUT = "C:\\Users\\Chxt\\Desktop\\29.jpg";
	private static final String FILEMARK = "C:\\Users\\Chxt\\Desktop\\1.jpg";
	private static final String FILEDEST1 = "C:\\Users\\Chxt\\Desktop\\文字水印效果.jpg";
	private static final String FILEDEST2 = "C:\\Users\\Chxt\\Desktop\\图像水印效果.jpg";

	/**
	 * 给图片添加文字水印
	 * 
	 * @param filePath
	 *            需要添加水印的图片的路径
	 * @param markContent
	 *            水印的文字
	 * @param markContentColor
	 *            水印文字的颜色
	 * @param qualNum
	 *            图片质量
	 * @return 布尔类型
	 */
	public boolean createStringMark(String filePath, String markContent, Color markContentColor, float qualNum) {
		ImageIcon imgIcon = new ImageIcon(filePath);
		Image theImg = imgIcon.getImage();
		int width = theImg.getWidth(null);
		int height = theImg.getHeight(null);
		BufferedImage bimage = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics2D g = bimage.createGraphics();
		g.setColor(markContentColor);
		g.setBackground(Color.white);
		g.drawImage(theImg, 0, 0, null);
		g.setFont(new Font(null, Font.BOLD, 32)); // 字体、字型、字号
		g.drawString(markContent, width / 10, height / 10); // 画文字
		g.dispose();
		try {
			FileOutputStream out = new FileOutputStream(FILEDEST1); // 先用一个特定的输出文件名
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(bimage);
			param.setQuality(qualNum, true);
			encoder.encode(bimage, param);
			out.close();
		} catch (Exception e) {
			return false;
		}
		return true;
	} // end of createStringMark

	/**
	 * 给图片添加图像水印
	 * 
	 * @param filePath
	 *            需要添加水印的图片的路径
	 * @param qualNum
	 *            图片质量
	 * @return 布尔类型
	 */
	public boolean createWaterMarkDemo(String filePath, float qualNum) {
		// 要处理的原始图片
		ImageIcon icoInput = new ImageIcon(filePath);
		Image imgInput = icoInput.getImage();
		int width = imgInput.getWidth(null);
		int height = imgInput.getHeight(null);
		BufferedImage buffInput = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 要添加上来的水印
		ImageIcon icoADD = new ImageIcon(FILEMARK);
		Image imgADD = icoADD.getImage();
		int w = imgADD.getWidth(null);
		int h = imgADD.getHeight(null);
		// 绘图
		Graphics2D g = buffInput.createGraphics();
		g.drawImage(imgInput, 0, 0, null);
		// 下面代码的前面五个参数：图片，x坐标，y坐标,图片宽度,图片高度
		g.drawImage(imgADD, 10, 10, w, h, null); // 靠左上绘制，x和y都是10
		g.dispose();
		try {
			FileOutputStream out = new FileOutputStream(FILEDEST2);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			JPEGEncodeParam param = encoder
					.getDefaultJPEGEncodeParam(buffInput);
			param.setQuality(qualNum, true);
			encoder.encode(buffInput, param);
			out.close();
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	// main方法：程序入口
	public static void main(String args[]) {
		WaterMarkDemo wmObj = new WaterMarkDemo();
		// 文字水印
		if (wmObj.createStringMark(FILEINPUT, "三亚(SanYa)", Color.red, 7) == true)
			System.out.println("生成文字水印成功。请查看当前目录下的" + FILEDEST1);
		else
			System.out.println("生成文字水印失败！");
		// 图像水印
		if (wmObj.createWaterMarkDemo(FILEINPUT, 3) == true)
			System.out.println("生成图像水印成功。请查看当前目录下的" + FILEDEST2);
		else
			System.out.println("生成图像水印失败！");
		// 结束程序
		System.exit(0);
	}
}