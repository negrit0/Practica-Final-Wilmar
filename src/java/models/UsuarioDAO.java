/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author mateo.llano
 */
import com.mysql.jdbc.Connection;
import db.DB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    Connection conn = null;
    DB conexion = null;

    public void agregar(Usuario p) {

        try {
            conn = conexion.getConexion();
            String query = "INSERT INTO usuario (identificacion, nombre, edad, estadoCivil, trabaja) values (?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, p.getIdentificacion());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getEdad());
            ps.setString(4, p.getEstadoCivil());
            ps.setString(5, p.getTrabaja());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally { try { rs.close(); } catch (Exception e) { /* ignored */ }
        }
    }
}
