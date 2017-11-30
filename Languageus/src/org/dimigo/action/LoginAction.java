package org.dimigo.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

public class LoginAction implements IAction
{
	// 입력값 검증
	private void validate(String id, String pwd) throws Exception
	{
		if (CommonUtil.isEmpty(id)) throw new Exception("Enter ur id.");
		if (CommonUtil.isEmpty(pwd)) throw new Exception("Enter ur pwd.");
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		try
		{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();

			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			System.out.printf("id : %s, pwd : %s", id, pwd);

			// 2 입력값 검증
			validate(id, pwd);

			// 3 Service 호출
			UserVO user = new UserVO();
			user.setId(id);
			user.setPwd(pwd);

			UserService service = new UserService();
			UserVO result = service.login(user);

			HttpSession session = request.getSession();
			session.setAttribute("user", result);

			RequestDispatcher rd = request.getRequestDispatcher("jsp/main.jsp");
			rd.forward(request, response);
		}
		catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		}
	}
}