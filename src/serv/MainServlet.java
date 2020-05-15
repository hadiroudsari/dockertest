package serv;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(name = "MainServlet")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuffer stringBuffer=new StringBuffer();
        System.out.println("post method has been arrived");
        BufferedReader bufferedReader=request.getReader();
        String str;
      while( (str = bufferedReader.readLine())!= null    ){
          stringBuffer.append(str);
      }
        System.out.println("post body : "+stringBuffer.toString());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET method has been arrived");
        PrintWriter printw=response.getWriter();
        printw.print("muhahaha");
    }
}
