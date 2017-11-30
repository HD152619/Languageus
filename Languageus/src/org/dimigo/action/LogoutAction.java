package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements IAction
{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// session delete
		HttpSession session = request.getSession();
		session.invalidate();

		RequestDispatcher rd = request.getRequestDispatcher("jsp/main.jsp");
		rd.forward(request, response);
	}
}
