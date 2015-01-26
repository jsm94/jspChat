package entidades;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Juan Antonio Seco Merchán
 */
public class Mensaje {
    private String user;
    private String text;
    private java.util.Date fechaYHora;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getFechaYHora() {
        return fechaYHora;
    }

    public void setFechaYHora(Date fechaYHora) {
        this.fechaYHora = fechaYHora;
    }
    
    public ArrayList<Mensaje> getMensajes(){
        try {
            Connection conn = utiles.BD.conectar();
            PreparedStatement insertar = conn.prepareStatement("insert into mensajes set user=?, text=?");
            insertar.setString(1, user);
            insertar.setString(2, text);
            insertar.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Mensaje.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public boolean setMensaje(){
        boolean res = false;
        try {
            Connection conn = utiles.BD.conectar();
            PreparedStatement insertar = conn.prepareStatement("insert into mensajes set user=?, text=?");
            insertar.setString(1, user);
            insertar.setString(2, text);
            insertar.executeUpdate();
            res = true;
        } catch (SQLException ex) {
            Logger.getLogger(Mensaje.class.getName()).log(Level.SEVERE, null, ex);
            res = false;
        }
        return res;
    }
    
}
