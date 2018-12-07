package util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	//cookies를 생성해야 쓸수있는 메서드들
	public Cookies(HttpServletRequest request){
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i = 0;i<cookies.length;i++){
				cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}
	}
	
	public Cookie getCookie(String name){
		return cookieMap.get(name);
	}
	
	public String getValue(String name) throws UnsupportedEncodingException{ //try catch대신 보내버림
		Cookie cookie = cookieMap.get(name);
		if(cookie == null){
			return null;
		}
		return URLDecoder.decode(cookie.getValue(),"utf-8");
	}
	
	public boolean exists(String name){
		if(cookieMap.get(name) != null){
			return true;
		}else{
			return false;
		}
	}
	
	//쿠키 생성(cookies를 생성없이 사용할수 있도록 static으로 만듦), 오버로딩 : 같은이름의 메서드이지만 여러개를 불러온다.
	public static Cookie createCookie(String name, String value) throws UnsupportedEncodingException{
		Cookie co = new Cookie(name, URLEncoder.encode(value,"utf-8"));
		return co;
	}
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws UnsupportedEncodingException{
		Cookie co = new Cookie(name, URLEncoder.encode(value,"utf-8"));
		co.setPath(path);
		co.setMaxAge(maxAge);
		return co;
	}
	
	public static Cookie createCookie(String name, String value, String path, int maxAge, String damain) throws UnsupportedEncodingException{
		Cookie co = new Cookie(name, URLEncoder.encode(value,"utf-8"));
		co.setPath(path);
		co.setMaxAge(maxAge);
		co.setDomain(damain);
		return co;
	}
	
}





























