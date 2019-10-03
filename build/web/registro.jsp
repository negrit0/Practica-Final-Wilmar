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
    Identificacion: <input type="text" name="identificacion"/><br>
    Nombre:         <input type="text" name="nombre"/><br>
    Edad:           <input type="text" name="edad"/><br>
    Estado Civil:   <input type="text" name="EstadoCivil"/><br>
    Trabaja:        <input type="text" name="trabaja"/><br>
    <input type="submit" value="Registrar" />
</form>

<%@ include file="footer.jsp" %>
