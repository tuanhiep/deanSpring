<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header">
    <%@ include file="../jspf/header.jspf" %>
</div>
<div>
    Welcome Hiep!!

    <table>
      <c:forEach items="${allRequests}" var="request">
        <tr>
          <td><c:out value="${request.course}" /></td>
          <td><c:out value="${request.motivation}" /></td>
        </tr>
      </c:forEach>
    </table>
</div>

<div id="footer">
    <%@ include file="../jspf/footer.jspf" %>
</div>