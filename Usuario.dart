/* 1. Criação da classe de modelo (O Objeto)
class Usuario {
  String nome;
  int idade;

  Usuario(this.nome, this.idade);

  //precisamos de uma forma de converter o objeto para um formato que o banco entenda (como um Map/Dicionário).
  Map<String, dynamic> toMap(){
    return{
      'nome': nome,
      'idade': idade,
    };
  }
}
// 2. Criação da classe ORM (A Ponte)
class FirstORM{
  String nomeDaTabela;

  FirstORM(this.nomeDaTabela)

  String gerarComandoInsert(<Map<String, dynamic> dadosDoObjeto) {
    String colunas = dadosDoObjeto.keys.join(', ');
    String valores = dadosDoObjeto.values.map((valor) {
      if (valor is String) {
        return "'$valor'"; // Adiciona aspas se for texto
      }
      return valor.toString(); // Deixa como número se não for texto
    }).join(', ');
    return 'INSERT INTO $nomeDaTabela ($colunas) VALUES ($valores);';
  }
}

// 3. Testando o ORM
void main() {
  // Criamos um novo usuário
  var aluno = Usuario('Ícaro', 23);
  
  // Instanciamos o nosso ORM avisando que a tabela se chama 'usuarios'
  var orm = MeuMiniORM('usuarios');
  
  // Geramos o código SQL usando os dados do aluno
  String sqlGerado = orm.gerarComandoInsert(aluno.toMap());
  
  // Imprimimos o resultado para ver a mágica acontecer!
  print('Comando SQL gerado pelo nosso ORM:');
  print(sqlGerado); 
}
*/