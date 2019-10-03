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
public class Usuario {
    
    protected Integer id;
    protected String identificacion;
    protected String nombre;
    protected String edad;
    protected String estadoCivil;
    protected String trabaja;
    

    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    
    public String getIdentificacion() { return identificacion; }
    public void setIdentificacion(String identificacion) { this.identificacion = identificacion; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getEdad() { return edad; }
    public void setEdad(String edad) { this.edad = edad; }
    
    public String getEstadoCivil() { return estadoCivil; }
    public void setEstadoCivil(String estadoCivil) { this.estadoCivil = estadoCivil; }
    
    public String getTrabaja() { return trabaja; }
    public void setTrabaja(String trabaja) { this.trabaja = trabaja; }
    

    
}
