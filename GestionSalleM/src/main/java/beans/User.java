package beans;

public class User {

	private int id;
    private String nom;
    private String username;
    private String password;
	
    public User(int id, String nom, String username, String password) {
		this.id = id;
		this.nom = nom;
		this.username = username;
		this.password = password;
	}
    
    public User(String nom, String username, String password) {
		this.nom = nom;
		this.username = username;
		this.password = password;
		
	}

	public int getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

    
}