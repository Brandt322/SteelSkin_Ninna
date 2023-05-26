package com.steelskin.modelo;

import com.steelskin.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClienteDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public Cliente Validar(String email, String pass) {
        String sql="select * from cliente where Email=? and Password=?";
        Cliente c=new Cliente();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setId(rs.getInt(1));
                c.setNombres(rs.getString(2));
                c.setEmail(rs.getString(3));
                c.setPass(rs.getString(4));
                c.setTelefono(rs.getInt(5));
                c.setDireccion(rs.getString(6));
                c.setTipo_usuario(rs.getString(7));
                
            }
        } catch (Exception e) {
        }
        return c;        
    }
    public int AgregarCliente(Cliente c) {
        String sql="INSERT INTO cliente (Nombres, Email, Password, Telefono, Direccion, Tipo_usuario)values(?,?,?,?,?,?)";        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getNombres());
            ps.setString(2, c.getEmail());
            ps.setString(3, c.getPass());
            ps.setInt(4, c.getTelefono());
            ps.setString(5, c.getDireccion());
            ps.setString(6,c.getTipo_usuario());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;        
    }
}
