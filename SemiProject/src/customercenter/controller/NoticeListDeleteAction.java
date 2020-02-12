package customercenter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractController;
import customercenter.model.Customercenter_noticeDAO;
import customercenter.model.InterCustomercenter_noticeDAO;
import member.model.MemberVO;

public class NoticeListDeleteAction extends AbstractController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.getCategoryList(request);
		
		HttpSession session = request.getSession();
		
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		
		if(loginuser != null) {

			if( loginuser.getUserid().equals("admin") ) {

				String index = request.getParameter("index"); 
				
				InterCustomercenter_noticeDAO cdao = new Customercenter_noticeDAO(); 
				
				int n = cdao.deletenotice(index); 
				
				//int n = 1; 
				
				if(n == 1) {
					String message = "정상적으로 삭제되었습니다.";
					String loc = request.getContextPath()+"/customercenter/notice.army";

					request.setAttribute("message", message);
					request.setAttribute("loc", loc);

					super.setViewPage("/WEB-INF/msg.jsp");
				}

			}

			else {
				String message = "관리자만 가능합니다.";
				String loc = "javascript:history.back()";

				request.setAttribute("message", message);
				request.setAttribute("loc", loc);

				super.setViewPage("/WEB-INF/msg.jsp");
			}
		}
		else {
			
			String message = "비정상 접근입니다.";
			String loc = "javascript:history.back()";

			request.setAttribute("message", message);
			request.setAttribute("loc", loc);

			super.setViewPage("/WEB-INF/msg.jsp");
			
		}
	}

}
