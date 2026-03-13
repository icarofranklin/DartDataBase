import 'package:projeto_orm_faculdade/projeto_orm_faculdade.dart' as projeto_orm_faculdade;
import 'package:drift/drift.dart';
import 'package:projeto_orm_faculdade/meu_banco.dart';
void main() async {
  //1. Inicialização do Banco de Dados
  final banco = MeuBancoDeDados();

  print ('--- Banco de Dados Iniciado ---');

  /*2. Criação de um novo aluno
  O Drift usa o formato "Companion" para inserções, para podermos ignorar o ID (já que o banco vai gerar isso automaticamente).*/
  final novoAluno = AlunosCompanion(
    nome: Value('Erick Emanuel'),
    curso: Value('Ciências da Computação'),
  );

  //3. Salvando o novo aluno no Banco de Dados (Usando o método ORM)
  print('Inserindo aluno no banco de dados...');
  await banco.inserirAluno(novoAluno);

  //4. Lendo o banco de dados
  print('Buscando alunos...');
  final listaDeAlunos = await banco.buscarTodosAlunos();

  //5. Exibindo os resultados
  for (var aluno in listaDeAlunos) {
    print('ID: ${aluno.id} | Nome: ${aluno.nome} | Curso: ${aluno.curso}');
  }

  //6. Fechando conexão
  await banco.close();
}
