
package com.steelskin.modelo;

public class Cliente {
    int id;
    String Nombres;
    String email;
    String pass;
    int telefono;
    String direccion;
    String tipo_usuario;

    public Cliente() {
    }

  public Cliente(int id, String Nombres, String email, String pass, int telefono, String direccion, String tipo_usuario) {
    this.id = id;
    this.Nombres = Nombres;
    this.email = email;
    this.pass = pass;
    this.telefono = telefono;
    this.direccion = direccion;
    this.tipo_usuario = tipo_usuario;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getNombres() {
    return Nombres;
  }

  public void setNombres(String Nombres) {
    this.Nombres = Nombres;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPass() {
    return pass;
  }

  public void setPass(String pass) {
    this.pass = pass;
  }

  public int getTelefono() {
    return telefono;
  }

  public void setTelefono(int telefono) {
    this.telefono = telefono;
  }

  public String getDireccion() {
    return direccion;
  }

  public void setDireccion(String direccion) {
    this.direccion = direccion;
  }

  public String getTipo_usuario() {
    return tipo_usuario;
  }

  public void setTipo_usuario(String tipo_usuario) {
    this.tipo_usuario = tipo_usuario;
  }

}
