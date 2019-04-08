package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PostsDAOImpl implements PostsDAO {

	private static Connection con;

	static {
		try {

			con = ConnectorUtility.getCon();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Posts> view() {

		ArrayList<Posts> list = new ArrayList<>();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from posts");
			while (rs.next()) {
				list.add(new Posts(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public Posts view(int id) {
		Posts post = new Posts();
		try {
			PreparedStatement pst = con.prepareStatement("select * from posts where id = ?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				post = new Posts(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public List<Integer> viewId() {
		ArrayList<Integer> listId = new ArrayList<>();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select id from posts");
			while (rs.next()) {
				listId.add(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listId;
	}

}
