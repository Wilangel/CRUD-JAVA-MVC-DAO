/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author WilangelSalsa
 */
public class PersonaDAO implements CRUD{
Conexion cn = new Conexion();
Connection con;
PreparedStatement ps;
ResultSet rs ;
Persona p = new Persona();
    
    @Override
    public java.util.List Listar() {
        ArrayList<Persona>list = new ArrayList<>();
        String sql = "select * from persona";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {                
                Persona per = new Persona();
                per.setId(rs.getInt("id"));
                per.setDni(rs.getString("dni"));
                per.setNom(rs.getString("nombre"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        
        return list;
    }

    @Override
    public Persona List(int id) {
        String sql = "select * from persona where id="+id;
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {                
                p.setId(rs.getInt("id"));
                p.setDni(rs.getString("dni"));
                p.setNom(rs.getString("nombre"));
            }
        } catch (Exception e) {
        }
        
        return p;
    }

    @Override
    public boolean Add(Persona per) {
        String sql = "insert into persona (dni, nombre)values('"+per.getDni()+"','"+per.getNom()+"')";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
        return false;
    }

    @Override
    public boolean Edit(Persona per) {
       String sql="update persona set dni='"+per.getDni()+"',nombre='"+per.getNom()+"'where Id="+per.getId();
      
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
