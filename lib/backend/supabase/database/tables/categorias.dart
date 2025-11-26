import '../database.dart';

class CategoriasTable extends SupabaseTable<CategoriasRow> {
  @override
  String get tableName => 'categorias';

  @override
  CategoriasRow createRow(Map<String, dynamic> data) => CategoriasRow(data);
}

class CategoriasRow extends SupabaseDataRow {
  CategoriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  int? get posicao => getField<int>('posicao');
  set posicao(int? value) => setField<int>('posicao', value);
}
