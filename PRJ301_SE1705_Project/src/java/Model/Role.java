/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class Role {
    private int roleId;
    private String authority;

    public Role() {
    }

    public Role(int roleId, String authority) {
        this.roleId = roleId;
        this.authority = authority;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String toString() {
        return "Role{" + "roleId=" + roleId + ", authority=" + authority + '}';
    }
    
}
