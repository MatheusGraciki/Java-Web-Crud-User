package model;

public class Cliente {
	protected int matricula;
	protected String nome;
	protected String endereco;
	protected String cidade;
	protected String estado;
	protected String modalidade;

	public Cliente() {
	}

	public Cliente(String nome, String endereco, String cidade, String estado, String modalidade ) {
		super();
		this.nome = nome;
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.modalidade = modalidade;

	}

	public Cliente(int matricula, String nome, String endereco, String cidade, String estado, String modalidade ) {
		super();
		this.matricula = matricula;
		this.nome = nome;
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.modalidade = modalidade;
		
	}

	public int getMatricula() {
		return matricula;
	}

	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getModalidade() {
		return modalidade;
	}

	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	
	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}





	}
