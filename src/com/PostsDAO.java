package com;

import java.util.List;

public interface PostsDAO {
	
	List<Posts> view();
	Posts view(int id);
	List<Integer> viewId();
}
