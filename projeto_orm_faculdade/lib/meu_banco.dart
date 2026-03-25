import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'meu_banco.g.dart';

/* 1. Definição da tabela (O Mapeamento)
Aqui dizemos ao ORM como nossa tabela deve ser no banco de dados.*/
class Alunos extends Table {
  IntColumn get id => integer().autoIncrement()(); // Coluna de ID: Número inteiro
  TextColumn get nome => text()(); // Coluna de Nome: Texto
  TextColumn get curso => text()(); // Coluna do Nome do Curso: Texto
}

/* 2. CONFIGURAÇÃO DO ORM
Esta anotação avisa ao Drift que esta classe é o nosso Banco de Dados e que ela contém a tabela "Alunos". */
@DriftDatabase(tables: [Alunos])
class MeuBancoDeDados extends _$MeuBancoDeDados { 
  //informando que vai criar um arquivo chamado "banco_faculdade.sqlite".
  MeuBancoDeDados() : super(NativeDatabase(File('banco_faculdade.sqlite'))); 

  @override
  int get schemaVersion => 1;
  Future<List<Aluno>> buscarTodosAlunos() => select(alunos).get(); // Método para buscar todos os alunos (Equivalente a SELECT * FROM Alunos)
  Future<int> inserirAluno(AlunosCompanion aluno) => into(alunos).insert(aluno);
}