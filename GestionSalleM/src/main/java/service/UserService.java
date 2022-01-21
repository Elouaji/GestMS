
package service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.User;
import connexion.Connexion;

public class UserService {
	public User login(String user, String pass) {
		String sql = "select * from user where username = ? and password = ?";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return new User(rs.getInt("id"), rs.getString("nom"), rs.getString("username"), rs.getString("password"));
			}
		} catch (SQLException e) {
			System.out.println("login : erreur sql : " + e.getMessage());

		}
		return null;
	}
	
	public int usersCount() {

		String sql = "SELECT count(*) as users from user";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return rs.getInt("users");
			}

		} catch (SQLException e) {
			System.out.println("usersCount " + e.getMessage());
		}
		return 0;
	}
	
}