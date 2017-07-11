package utils;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class CookieUtils {
	public static void demoUserCookie(HttpServletRequest request,
			HttpServletResponse response,JspWriter out) throws IOException
	{
		boolean found = false;
		/*
		 * Danh sach cookie duoc web size luu vao may tinh nguoi dung
		 */
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length >0)
		{
			String userName = null;
			String lastLoginDateTime = null;
			
			out.println("<h3>Cookie: </h3>");
			
			for(Cookie index : cookies)
			{
				out.println(index.getName() + " : " + index.getValue() + "<br>");
				 if (index.getName().equals("userName")) {
	                 userName = index.getValue();
	             } else if (index.getName().equals("lastLoginDatetime")) {
	                 lastLoginDateTime = index.getValue();
	             }	 
			}
			if (userName != null) {
	             found = true;
	             out.println("<h4>Last login info:</h4>");
	             out.println("User Name: " + userName + "<br>");
	             out.println("Last Login Datetime: " + lastLoginDateTime
	                     + "<br>");
	         }
		}
			
			if (!found) {
		         out.println("<h3>No cookies founds!, write some cookies into client computer</h3>");
		         // Ghi một vài thông tin Cookie vào máy tính người dùng.
		         // Chẳng hạn như userName họ đã từng login.
		         // Đây là cách nhớ user đã login
		         // Mô phỏng ghi Cookie vào máy tính người dùng sau khi họ vừa login.
		 
		         String userName = "someUserName";
		 
		         Cookie cookieUserName = new Cookie("userName", userName);
		 
		         DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		         Date now = new Date();
		 
		         String lastLoginDatetime = df.format(now);
		 
		         Cookie cookieLoginDatetime = new Cookie("lastLoginDatetime",
		                 lastLoginDatetime);
		 
		         // Sét đặt thời gian sống của Cookie là 24h (Đã đổi ra giây).
		         cookieUserName.setMaxAge(24 * 60 * 60);
		         // Sét đặt thời gian sống của Cookie là 24h (Đã đổi ra giây).
		         cookieLoginDatetime.setMaxAge(24 * 60 * 60);
		 
		         // Ghi vào máy tính người dùng.
		         response.addCookie(cookieUserName);
		         // Ghi vào máy tính người dùng.
		         response.addCookie(cookieLoginDatetime);
		     }
			
		
	}
}
