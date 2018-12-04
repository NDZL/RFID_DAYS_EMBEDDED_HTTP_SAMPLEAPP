<%@ page import="java.io.*,java.util.*, java.util.Calendar, java.util.Date, java.text.DateFormat, java.text.SimpleDateFormat" %>

<%
    String nameOfTextFile = "/JBOSS/rfid_post.log";

	OutputStream os= new FileOutputStream(nameOfTextFile, true);
	String adesso = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")).format(Calendar.getInstance().getTime())+"-";
	byte[] now_buf = adesso.getBytes();
	os.write(now_buf, 0, now_buf.length);
	
	byte[] buf = request.getParameter("tag").getBytes();
	os.write(buf, 0, buf.length);
	
	os.close();  
%>

