package main.java;

public interface ProjectDao {
	void addProject(ProjectResource project);
	void deleteProject(String name);
	void update(ProjectResource project);
	String  listprojectname();

}
