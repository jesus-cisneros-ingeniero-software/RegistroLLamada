package comutador;

import java.sql.Date;
import java.sql.Time;

public class Registro {
    private int id;
    private Date fecha;
    private Time hora;
    private String telefono;
    private String subdireccion;
    private String observaciones;
    private String ext;

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public Date getFecha() { return fecha; }
    public void setFecha(Date fecha) { this.fecha = fecha; }

    public Time getHora() { return hora; }
    public void setHora(Time hora) { this.hora = hora; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getSubdireccion() { return subdireccion; }
    public void setSubdireccion(String subdireccion) { this.subdireccion = subdireccion; }

    public String getObservaciones() { return observaciones; }
    public void setObservaciones(String observaciones) { this.observaciones = observaciones; }

    public String getExt() { return ext; }
    public void setExt(String ext) { this.ext = ext; }
}
