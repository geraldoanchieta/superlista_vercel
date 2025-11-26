import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? calculateSubtotal(List<double> itemTotals) {
  double subtotal = 0.0;
  for (double total in itemTotals) {
    subtotal += total;
  }

  // Apply discount
  double discount = subtotal * 0.02;
  double discountedSubtotal = subtotal - discount;

  // Apply tax
  double tax = discountedSubtotal * 0.10;
  double subtotalWithTax = discountedSubtotal + tax;

  return subtotalWithTax;
}

bool? isDataVencida(DateTime? dataParaVerificar) {
  if (dataParaVerificar == null) {
    return false;
  }

  // 2. Pega a data de hoje, mas sem as horas, para uma comparação justa.
  final agora = DateTime.now();
  final hoje = DateTime(agora.year, agora.month, agora.day);

  // 3. Pega a data de validade, também sem as horas.
  final dataValidade = DateTime(
      dataParaVerificar.year, dataParaVerificar.month, dataParaVerificar.day);

  // 4. Retorna 'true' se o dia de hoje for DEPOIS do dia da validade.
  return hoje.isAfter(dataValidade);
}

int? arredoindaValor(
  double quantCompra,
  double quantMinVenda,
) {
  double divisao = quantCompra / quantMinVenda;

  return divisao.ceil();
}

double? texttToDouble(String numeroComVirgula) {
  final String numeroComPonto = numeroComVirgula.replaceAll(',', '.');

  // 2. Tenta converter o texto para um double.
  // double.tryParse é seguro: se a conversão falhar (ex: se o texto for "abc"),
  // ele retorna null em vez de causar um erro.
  return double.tryParse(numeroComPonto);
}

DateTime? dataAtualUltimoMinuto() {
  final DateTime agora = DateTime.now();

  // Cria um novo DateTime usando apenas o ano, mês e dia de "agora".
  // O construtor define automaticamente a hora, minuto e segundo como 0.
  return DateTime(
    agora.year,
    agora.month,
    agora.day,
  );
}

String formataCnpj(String cnpj) {
  // criue uma funcao re remove os caracteres . , / - do texto informado retonado apenas o numero puro
  return cnpj.replaceAll(RegExp(r'[.,\-\/]'), '');
}

double? cifraoToDOuble(String? valor) {
  // criar uma funcao que recebe uma string tipo R$ 9,012.89 e retorna um double 9012.89
  if (valor == null) return null;
  // Remove the 'R$' prefix and any non-numeric characters except for the decimal point
  String sanitizedValue =
      valor.replaceAll('R\$', '').replaceAll(',', '').trim();
  // Convert the sanitized string to double
  return double.tryParse(sanitizedValue);
}
