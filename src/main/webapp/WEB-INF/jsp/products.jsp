<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>

    <head>
    </head>
    <body>
        <table>
        	<tr>
        		<td>
        			产品编号
        		</td>
        		<td>
        			产品名称
        		</td>
        		<td>
        			产品价格
        		</td>
        		<td>
        			操作
        		</td>
        	</tr>
	        <c:forEach items="${pList }" var="p">
	        	<tr>
	        		<td>
	        			${p.id }
	        		</td>
	        		<td>
	        			${p.name }
	        		</td>
	        		<td>
	        			${p.price }
	        		</td>
	        		<td>
	        			<a href="<%=request.getContextPath() %>/alipay/goConfirm.action?productId=${p.id }">购买</a>
	        		</td>
	        	</tr>
	        	
	        </c:forEach>
        </table>
        
        <input type="hidden" id="hdnContextPath" name="hdnContextPath" value="<%=request.getContextPath() %>"/>
    </body>
    
</html>

<script src="${pageContext.request.contextPath }/statics/myzhanghu_files/jquery-3.3.1.min.js" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function() {
		
		var hdnContextPath = $("#hdnContextPath").val();
		
		
	});
	

</script>
<script type="text/javascript">

	function wxpayDisplay() {
		debugger;
		
		var hdnContextPath = $("#hdnContextPath").val();
		
		$("#payForm").attr("action", hdnContextPath + "/wxpay/createPreOrder");
		$("#payForm").submit();
	}

// 	$(document).ready(function() {
		
// 		var hdnContextPath = $("#hdnContextPath").val();
		
// 	});
	

</script>
