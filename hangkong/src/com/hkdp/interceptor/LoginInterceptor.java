package com.hkdp.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hkdp.po.Manager;
import com.hkdp.po.User;

public class LoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		
		String url = request.getRequestURI();
		
		if (url.indexOf("/toHomePage") >= 0||
				url.indexOf("/in") >= 0||
				url.indexOf("/in1") >= 0||
				url.indexOf("/login") >= 0||
				url.indexOf("/manalogin") >= 0||
				url.indexOf("/toQueryFlights") >= 0) {
			return true;
		}
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("loginuser");
		Manager manager=(Manager)session.getAttribute("loginmana");
		
		if (user != null||manager!=null) {
			return true;
		}
		
		request.setAttribute("msg", "您还没有登录，请先登录！");
		request.getRequestDispatcher("/WEB-INF/jsp/ljy/login.jsp")
		                                        .forward(request, response);
		return false;
	}
	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}
	@Override
	public void afterCompletion(HttpServletRequest request, 
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
}
