package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

public class SignupAction implements IAction
{

   private void validate(UserVO vo) throws Exception
   {
      if (CommonUtil.isEmpty(vo.getId())) throw new Exception("Enter ur id.");
      if (CommonUtil.isEmpty(vo.getName())) throw new Exception("Enter ur name.");
      if (CommonUtil.isEmpty(vo.getNickname())) throw new Exception("Enter ur nickname.");
      if (CommonUtil.isEmpty(vo.getPwd())) throw new Exception("Enter ur pwd.");
   }

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception
   {
      // PrintWriter out = response.getWriter();
      try
      {
    	 response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("UTF-8");
         
         //1. 입력값 추출
         String id = request.getParameter("id");
         String pwd = request.getParameter("pwd");
         String name = request.getParameter("name");
         String nickname = request.getParameter("nickname");

         //2. 입력값 검증
         UserVO user = new UserVO(id, name, nickname);
         user.setPwd(pwd);
         
         validate(user);
         
         // Service Calling
         UserService service = new UserService();
         service.signup(user);
         
         RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
         rd.forward(request, response);
      }
      
      catch (Exception e)
      {
         e.printStackTrace();
         request.setAttribute("error", e.getMessage());
         RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
         rd.forward(request, response);
      }
   }
}