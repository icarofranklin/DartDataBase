// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meu_banco.dart';

// ignore_for_file: type=lint
class $AlunosTable extends Alunos with TableInfo<$AlunosTable, Aluno> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlunosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cursoMeta = const VerificationMeta('curso');
  @override
  late final GeneratedColumn<String> curso = GeneratedColumn<String>(
    'curso',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, nome, curso];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'alunos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Aluno> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('curso')) {
      context.handle(
        _cursoMeta,
        curso.isAcceptableOrUnknown(data['curso']!, _cursoMeta),
      );
    } else if (isInserting) {
      context.missing(_cursoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Aluno map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Aluno(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      curso: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}curso'],
      )!,
    );
  }

  @override
  $AlunosTable createAlias(String alias) {
    return $AlunosTable(attachedDatabase, alias);
  }
}

class Aluno extends DataClass implements Insertable<Aluno> {
  final int id;
  final String nome;
  final String curso;
  const Aluno({required this.id, required this.nome, required this.curso});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['curso'] = Variable<String>(curso);
    return map;
  }

  AlunosCompanion toCompanion(bool nullToAbsent) {
    return AlunosCompanion(
      id: Value(id),
      nome: Value(nome),
      curso: Value(curso),
    );
  }

  factory Aluno.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Aluno(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      curso: serializer.fromJson<String>(json['curso']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'curso': serializer.toJson<String>(curso),
    };
  }

  Aluno copyWith({int? id, String? nome, String? curso}) => Aluno(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    curso: curso ?? this.curso,
  );
  Aluno copyWithCompanion(AlunosCompanion data) {
    return Aluno(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      curso: data.curso.present ? data.curso.value : this.curso,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Aluno(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('curso: $curso')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, curso);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Aluno &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.curso == this.curso);
}

class AlunosCompanion extends UpdateCompanion<Aluno> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> curso;
  const AlunosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.curso = const Value.absent(),
  });
  AlunosCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String curso,
  }) : nome = Value(nome),
       curso = Value(curso);
  static Insertable<Aluno> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? curso,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (curso != null) 'curso': curso,
    });
  }

  AlunosCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<String>? curso,
  }) {
    return AlunosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      curso: curso ?? this.curso,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (curso.present) {
      map['curso'] = Variable<String>(curso.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlunosCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('curso: $curso')
          ..write(')'))
        .toString();
  }
}

abstract class _$MeuBancoDeDados extends GeneratedDatabase {
  _$MeuBancoDeDados(QueryExecutor e) : super(e);
  $MeuBancoDeDadosManager get managers => $MeuBancoDeDadosManager(this);
  late final $AlunosTable alunos = $AlunosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [alunos];
}

typedef $$AlunosTableCreateCompanionBuilder =
    AlunosCompanion Function({
      Value<int> id,
      required String nome,
      required String curso,
    });
typedef $$AlunosTableUpdateCompanionBuilder =
    AlunosCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<String> curso,
    });

class $$AlunosTableFilterComposer
    extends Composer<_$MeuBancoDeDados, $AlunosTable> {
  $$AlunosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get curso => $composableBuilder(
    column: $table.curso,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AlunosTableOrderingComposer
    extends Composer<_$MeuBancoDeDados, $AlunosTable> {
  $$AlunosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get curso => $composableBuilder(
    column: $table.curso,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AlunosTableAnnotationComposer
    extends Composer<_$MeuBancoDeDados, $AlunosTable> {
  $$AlunosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get curso =>
      $composableBuilder(column: $table.curso, builder: (column) => column);
}

class $$AlunosTableTableManager
    extends
        RootTableManager<
          _$MeuBancoDeDados,
          $AlunosTable,
          Aluno,
          $$AlunosTableFilterComposer,
          $$AlunosTableOrderingComposer,
          $$AlunosTableAnnotationComposer,
          $$AlunosTableCreateCompanionBuilder,
          $$AlunosTableUpdateCompanionBuilder,
          (Aluno, BaseReferences<_$MeuBancoDeDados, $AlunosTable, Aluno>),
          Aluno,
          PrefetchHooks Function()
        > {
  $$AlunosTableTableManager(_$MeuBancoDeDados db, $AlunosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AlunosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AlunosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AlunosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String> curso = const Value.absent(),
              }) => AlunosCompanion(id: id, nome: nome, curso: curso),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                required String curso,
              }) => AlunosCompanion.insert(id: id, nome: nome, curso: curso),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AlunosTableProcessedTableManager =
    ProcessedTableManager<
      _$MeuBancoDeDados,
      $AlunosTable,
      Aluno,
      $$AlunosTableFilterComposer,
      $$AlunosTableOrderingComposer,
      $$AlunosTableAnnotationComposer,
      $$AlunosTableCreateCompanionBuilder,
      $$AlunosTableUpdateCompanionBuilder,
      (Aluno, BaseReferences<_$MeuBancoDeDados, $AlunosTable, Aluno>),
      Aluno,
      PrefetchHooks Function()
    >;

class $MeuBancoDeDadosManager {
  final _$MeuBancoDeDados _db;
  $MeuBancoDeDadosManager(this._db);
  $$AlunosTableTableManager get alunos =>
      $$AlunosTableTableManager(_db, _db.alunos);
}
// mapeamento automatico 