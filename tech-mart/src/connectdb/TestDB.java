package connectdb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.User;

public class TestDB {
	public static void main(String[] args) {
		for(User user: getAllUsers()) {
			System.out.println(user.getId());
			System.out.println(user.getFirstName());
			System.out.println(user.getLastName());
			System.out.println(user.getEmail());
			System.out.println(user.getPassword());
		}
	}
	
	public static List<User> getAllUsers() {
		List<User> sl = new ArrayList<>();

		ConnectDB db = ConnectDB.getInstance();
		String sql = "SELECT * FROM users order by id";
		try {
			Connection con = db.openConnection();

			PreparedStatement statement = con.prepareStatement(sql);

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(1);

				String fisrtName = rs.getString(2);
				String lartName = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);

				User tmpUser = new User(id, fisrtName, lartName, email, password);
				sl.add(tmpUser);
			}
			rs.close();
			statement.close();
			con.close();
		} catch (Exception ex) {
			Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
		}
		return sl;
	}
	
}
