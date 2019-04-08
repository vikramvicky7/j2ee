package webservices.webservices;


import java.util.List;

import model.Posts;

public interface PostsDAO {
	
	int insert(Posts post);
	int update(Posts post);
	int delete(int id);
	List<Posts> view();
	Posts view(int id);
	List<Integer> viewId();

}