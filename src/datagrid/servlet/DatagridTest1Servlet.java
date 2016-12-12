package datagrid.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import datagrid.Person;

/**
 * Servlet implementation class DatagridTest1Servlet
 */
public class DatagridTest1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatagridTest1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("GET请求");
		Map<String, Object> map=new HashMap<String, Object>();
		List<Person> list=new ArrayList<Person>();
		Person p1=new Person("张三", "男", "20", "a");
		Person p2=new Person("李四", "女", "21", "ab");
		Person p3=new Person("老王", "男", "22", "abc");
		list.add(p1);
		list.add(p2);
		list.add(p3);
		map.put("total", list.size());
		map.put("rows", list);
		JSONObject json=JSONObject.fromObject(map);
		response.setCharacterEncoding("utf-8");
		//发送请求内容至页面,js接收内容
		response.getWriter().write(json.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
