<%-- 
    Document   : registro
    Created on : 20/05/2016, 08:42:33 AM
    Author     : mateo.llano
--%>

<%@ include file="header.jsp" %>


<c:if test="${not empty mensaje}">
    <div><b><c:out value="${mensaje}" /></b></div>
</c:if>

<script type="text/javascript">
        function valida(f) {
          var ok = true;
          var msg = "Debes escribir algo en los campos:\n";
          if(f.elements[0].value == "")
          {
            msg += "- Identificacion \n";
                    ok = false;
                }

                if (f.elements["nombre"].value == "")
                {
                    msg += "- Nombre \n";
                    ok = false;
                }

                if (f.edad.value == "")
                {
                    msg += "- Edad \n";
                    ok = false;
                }
                
                if (f.EstadoCivil.value == "")
                {
                    msg += "- Estado Civil \n";
                    ok = false;
                }

                if (ok == false)
                    alert(msg);
                return ok;
            }
            
        </script>
<form id="miForm" action="" method="get" onsubmit="return valida(this)">
    <pre>
    Identificacion: <input type="text" name="identificacion"/><br>
    Nombre:         <input type="text" name="nombre"/><br>
    Edad:           <input type="text" name="edad"/><br>
    Estado Civil:   <input type="text" name="EstadoCivil"/><br>
    Trabaja:        <input type="checkbox" name="si"> Si <input type="checkbox" name="no"> No <br>
    </pre>
  
    <form action="./crear_usuario" method="POST">
    <input type="submit" value="Registrar" />
    <input type="reset" value="Borrar" />
    <input type="submit" value="Actualizar" />
    <input type="button" value="Mostrar"  />
    </form>
   
         <table border="1">
            <thead>
                <tr>
                    <th>Identificacion</th>
                    <th>Nombre</th>
                    <th>Edad</th>
                    <th>Estado Civil</th>
                    <th>Trabaja</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>11111</td>
                    <td>wilmar</td>
                    <td>35</td>
                    <td>soltero</td>
                    <td>si</td>
                </tr>
                <tr>
                    <td>22222</td>
                    <td>andrea</td>
                    <td>33</td>
                    <td>soltera</td>
                    <td>si</td>
                </tr>
                <tr>
                    <td>33333</td>
                    <td>diego</td>
                    <td>23</td>
                    <td>casado</td>
                    <td>si</td>
                </tr>
                <tr>
                    <td>4444</td>
                    <td>diana</td>
                    <td>45</td>
                    <td>casada</td>
                    <td>si</td>
                </tr>
            </tbody>
        </table>
    
    
</form>
    
    

<%@ include file="footer.jsp" %>
