import '../database.dart';

class UnidadesTable extends SupabaseTable<UnidadesRow> {
  @override
  String get tableName => 'unidades';

  @override
  UnidadesRow createRow(Map<String, dynamic> data) => UnidadesRow(data);
}

class UnidadesRow extends SupabaseDataRow {
  UnidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get simbolo => getField<String>('simbolo')!;
  set simbolo(String value) => setField<String>('simbolo', value);

  String get tipoMedida => getField<String>('tipo_medida')!;
  set tipoMedida(String value) => setField<String>('tipo_medida', value);

  double get fatorParaBaseSi => getField<double>('fator_para_base_si')!;
  set fatorParaBaseSi(double value) =>
      setField<double>('fator_para_base_si', value);
}
