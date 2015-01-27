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

    private Integer id;
    private String user;
    private String text;
    private java.util.Date fechaYHora;
    private ArrayList<Mensaje> listaMensajes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public ArrayList<Mensaje> getListaMensajes() {
        return listaMensajes;
    }

    public void setListaMensajes(int limit) {

        listaMensajes = new ArrayList<>();
        try {
            Connection conn = utiles.BD.conectar();
            Statement consultaMensajes = conn.createStatement();
            ResultSet resultado = consultaMensajes.executeQuery(
                    "SELECT * FROM (SELECT * FROM mensajes ORDER BY date DESC LIMIT " + limit + ") g ORDER BY g.date");
            while (resultado.next()) {
                Mensaje mensaje = new Mensaje();
                mensaje.setId(resultado.getInt("id"));
                mensaje.setUser(resultado.getString("user"));
                mensaje.setText(resultado.getString("text"));
                mensaje.setFechaYHora(resultado.getTimestamp("date"));
                listaMensajes.add(mensaje);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Mensaje.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void setMensaje() {
        try {
            Connection conn = utiles.BD.conectar();
            PreparedStatement insertar = conn.prepareStatement("insert into mensajes set user=?, text=?");
            insertar.setString(1, user);
            insertar.setString(2, text);
            insertar.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Mensaje.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
