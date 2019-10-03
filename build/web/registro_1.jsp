<%-- 
    Document   : registro
    Created on : 20/05/2016, 08:42:33 AM
    Author     : mateo.llano
--%>

<%@ include file="header.jsp" %>

<c:if test="${not empty mensaje}">
    <div><b><c:out value="${mensaje}" /></b></div>
</c:if>

<form action="./crear_usuario" method="POST">
    Nombre: <input type="text" name="nombre"/>
    Correo: <input type="text" name="correo"/>
    Edad: <input type="text" name="edad"/>
    <input type="submit" value="Registrar" />
</form>

<%@ include file="footer.jsp" %>
