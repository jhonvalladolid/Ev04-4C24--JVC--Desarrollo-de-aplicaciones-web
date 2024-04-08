package datos;
import java.sql.*;
import javax.swing.JOptionPane;

public class Libreria {
    public String driver="com.mysql.cj.jdbc.Driver";
    public String cadena="jdbc:mysql://localhost/EmpresaEV01Sem04";
    public String usuario="root";
    public String clave="";
    public Connection con;
    public PreparedStatement sen;
    public ResultSet data;
    
    public Connection conexion() {
        try {
            Class.forName(driver);
            con=DriverManager.getConnection(cadena,usuario,clave);
        }catch(ClassNotFoundException e1) {
            JOptionPane.showMessageDialog(null, "Error en el driver");
        }catch(SQLException e2) {
            JOptionPane.showMessageDialog(null, "Error en la conexion");
        }
        return con;
    }
    
    public boolean insertarEmpleado(int codigo, String apellidos, String nombres, double sueldo, String cargo) {
        try {
        	String insertasql="insert into Empleado values (?,?,?,?,?)";
        	sen=conexion().prepareStatement(insertasql);
        	sen.setInt(1, codigo);
        	sen.setString(2, apellidos);
        	sen.setString(3, nombres);
        	sen.setDouble(4, sueldo);
        	sen.setString(5, cargo);
        	sen.executeUpdate();
        }catch(SQLException e3) {
            JOptionPane.showMessageDialog(null, "Error en el proceso de registro");
            return false;
        }
        return true;
    }
    
    public ResultSet consulta(String codigosql) {
        try {
            String consultasql=codigosql;
            sen=conexion().prepareStatement(consultasql);
            data=sen.executeQuery();
        }catch(SQLException e4){
            JOptionPane.showMessageDialog(null, "Error en el proceso de consulta");
        }
        return data;
    }
    
    public ResultSet buscarPorApellidos(String apellidos) {
        try {
            String consultaSql = "select * from Empleado where emp_apellidos like ?";
            sen = conexion().prepareStatement(consultaSql);
            sen.setString(1, "%" + apellidos + "%");
            data = sen.executeQuery();
        } catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Error en el proceso de consulta");
        }
        return data;
    }
}
