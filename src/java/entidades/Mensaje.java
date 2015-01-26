package entidades;

import java.sql.*;
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
        ArrayList<Mensaje> mensajes = new ArrayList<>();
        try {
            Connection conn = utiles.BD.conectar();
            Statement consultaMensajes = conn.createStatement();
            ResultSet resultado = consultaMensajes.executeQuery(
                    "select * from mensajes order by date limit 30");
            while (resultado.next()) {
                Mensaje mensaje = new Mensaje();
                mensaje.setUser(resultado.getString("user"));
                mensaje.setText(resultado.getString("text"));
                mensaje.setFechaYHora(resultado.getDate("date"));
                mensajes.add(mensaje);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Mensaje.class.getName()).log(Level.SEVERE, null, ex);
        }
        return mensajes;
    }
    
    public void setMensaje(){
        try {
            Connection conn = utiles.BD.conectar();
            PreparedStatement insertar = conn.prepareStatement("insert into mensajes set user=?, text=?");
            insertar.setString(1, user);
            insertar.setString(2, text);
            insertar.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Mensaje.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
