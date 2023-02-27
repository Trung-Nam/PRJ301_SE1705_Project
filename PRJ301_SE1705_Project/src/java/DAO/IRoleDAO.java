/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Role;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IRoleDAO {

    public List<Role> getAllRoles() throws SQLException;

    public void addRole(String authority) throws SQLException;

    public void editRole(Role role) throws SQLException;

    public void deleteRole(int id) throws SQLException;

}
