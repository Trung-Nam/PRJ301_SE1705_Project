/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.UserRole;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IUserRoleDAO {
	public List<UserRole> getAllUserRoles() throws SQLException;

	public void addUserRole(int userId, int roleId) throws SQLException;

	public void editUserRole(UserRole userRole) throws SQLException;

	public void deleteUserRole(int userId) throws SQLException;

	public List<UserRole> getByUserId(int userId) throws SQLException;
}
