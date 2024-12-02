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
import '/auth/custom_auth/auth_util.dart';

String? categorySelected(
  List<dynamic>? categories,
  String? profselected,
) {
  var rest = categories as List;
  var filteredList;
  if (profselected == null || profselected == "") {
    return "";
  }
  filteredList = rest.firstWhere((val) => val["id"].toString() == profselected);
  if (filteredList == null || filteredList["license_name"] == null) {
    return "";
  }
  return filteredList["license_name"];
}

String? clearMaskPhone(String? phone) {
  return phone
      ?.replaceAll("(", "")
      .replaceAll(")", "")
      .replaceAll("-", "")
      .replaceAll(" ", "");
}

dynamic filterServices(
  List<dynamic>? services,
  String? stringFilter,
) {
  if (stringFilter == "") {
    return services;
  }
  List outputList = services!
      .where((service) =>
          service['label'].toLowerCase().contains(stringFilter?.toLowerCase()))
      .toList();
  return outputList;
}

dynamic removeJsonToJson(
  dynamic lista,
  int? index,
  String? coluna,
) {
  if (index == null || index == "null") {
    return lista;
  }
  if (lista[coluna] != null) {
    lista[coluna].removeAt((index));
  }
  return lista;
}

dynamic addTwoListsNotLabelDuplicate(
  List<dynamic>? lista1,
  List<dynamic>? lista2,
) {
  if (lista1 == null) {
    return lista2;
  }
  if (lista2 == null) {
    return lista1;
  }
  List duplicates = lista1! + lista2!;
  List<dynamic> uniqueItems = [];
  var uniques = duplicates.map((e) => e['label']).toSet();
  uniques.forEach((e) {
    uniqueItems.add(duplicates.firstWhere((i) => i['label'] == e));
  });
  return uniqueItems;
}

dynamic addJsonToJson(
  dynamic lista,
  dynamic element,
  String? coluna,
) {
  if (element == null || element == "null") {
    return lista;
  }
  if (lista[coluna] != null) {
    if (!lista[coluna].contains(element)) {
      lista[coluna].add((element));
    }
  }
  return lista;
}

bool? existElementList(List<dynamic>? itens) {
  if (itens == null) {
    return false;
  }
  return itens!.length > 0;
}

int? convertStrintToInt(String? parametro) {
  try {
    return int.parse(parametro!);
  } catch (err) {
    return 0;
  }
}

bool? searchElementByListAndColumn(
  List<dynamic>? lista,
  String? search,
  String coluna,
) {
  try {
    var rest = lista as List;
    var filteredList;
    filteredList = rest.firstWhere(
        (val) => val[coluna] != null && val[coluna].toString() == search);
    if (filteredList == null) {
      return false;
    }
    return true;
  } catch (error) {
    return false;
  }
}

String? concateStrings(
  String? param1,
  String? param2,
) {
  return param1! + param2!;
}

List<dynamic>? clearDuplicates(
  dynamic duplicates,
  String? coluna,
) {
  List<dynamic> uniqueItems = [];
  var uniques = duplicates.map((e) => e[coluna]).toSet();
  uniques.forEach((e) {
    uniqueItems.add(duplicates?.firstWhere((i) => i[coluna] == e));
  });
  return uniqueItems;
}

dynamic addStringToJson(
  dynamic lista,
  String? element,
  String? coluna,
) {
  if (element == null || element == "null") {
    return lista;
  }
  if (lista[coluna] != null) {
    if (!lista[coluna].contains(element)) {
      lista[coluna].add(element);
    }
  }
  return lista;
}

String? convertJsonToString(dynamic lista) {
  if (lista == null) {
    return "";
  }
  return lista + "";
}

String? formatDateHour(String? data) {
  try {
    var ano = data?.substring(2, 4).trim();
    var mes = data?.substring(5, 7).trim();
    var dia = data?.substring(8, 10).trim();
    var hora = data?.substring(11, 16).trim();
    return dia! + "/" + mes! + "/" + ano! + " " + hora!;
  } catch (err) {
    return data;
  }
}

dynamic removeDuplicateDomainSugestionsArray(dynamic lista) {
  var notDuplicate = lista['sugestions'].toSet().toList();
  lista['sugestions'] = notDuplicate;
  return lista;
}

String? setEmoji(int? index) {
  const String emojis = "👍😊🤣🥳💕😍😘💋🤪🔥😇😈🥱🙄😮🙁😠👎";
  if (index == null || index < 0 || index >= emojis.runes.length) {
    return '';
  }
  List<int> emojiRunes = emojis.runes.toList();
  return String.fromCharCode(emojiRunes[index]);
}

String? removeNullString(String? parameter) {
  if (parameter == null || parameter == "null") {
    return "";
  }
  return parameter;
}

String? firstName(String? fullName) {
  if (fullName == null) {
    return null;
  }
  final splitName = fullName.split(' ');
  return splitName.isNotEmpty ? splitName.first : null;
}

String? formatDate(String? data) {
  try {
    var ano = data?.substring(2, 4).trim();
    var mes = data?.substring(5, 7).trim();
    var dia = data?.substring(8, 10).trim();
    return dia! + "/" + mes! + "/" + ano!;
  } catch (err) {
    return data;
  }
}

bool? existeElementSpecifcList(
  dynamic lista,
  String? elemento,
) {
  try {
    if (lista == null || elemento == null) {
      return false;
    }
    return lista!.contains(elemento);
  } catch (err) {
    return false;
  }
}

String? formatMaskPhone(String? phone) {
  final cleanPhone = phone?.replaceAll(RegExp(r'[^\d]'), '');
  final areaCode = cleanPhone?.substring(0, 2);
  final firstPart = cleanPhone?.substring(2, 7);
  final secondPart = cleanPhone?.substring(7);
  return '($areaCode) $firstPart-$secondPart';
}

String? convertToTitleCase(String? text) {
  List<String> words = text!.split(' ');
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toUpperCase() + word.substring(1);
    }
  }
  return words.join(' ');
}

String? formatDateBD(String? data) {
  try {
    var ano = data?.substring(6, 10).trim();
    var mes = data?.substring(3, 5).trim();
    var dia = data?.substring(0, 2).trim();
    return ano! + "-" + mes! + "-" + dia!;
  } catch (err) {
    return data;
  }
}

dynamic handleNullList(dynamic list) {
  if (list == null) {
    return [];
  }
  return list;
}

String? formatDateYYYY(String? data) {
  try {
    var ano = data?.substring(0, 4).trim();
    var mes = data?.substring(5, 7).trim();
    var dia = data?.substring(8, 10).trim();
    return dia! + "/" + mes! + "/" + ano!;
  } catch (err) {
    return data;
  }
}

dynamic updateValueToJson(
  dynamic json,
  String? element,
  String? valor,
) {
  try {
    json[element] = valor;
    return json;
  } catch (err) {
    return json;
  }
}

String? formatCurrency(String? valor) {
  if (valor == null) return null;
  final format = NumberFormat.currency(locale: 'pt_BR', symbol: '');
  final doubleValue = double.tryParse(valor.replaceAll(',', '.'));
  if (doubleValue == null) return null;
  return format.format(doubleValue);
}

dynamic filterPackages(dynamic json) {
  List<Map<String, dynamic>> filteredList = [];
  for (var package in json) {
    filteredList.add({
      'id': package['id'],
      'monthly_value':
          double.parse(package['monthly_value'].replaceAll(",", "."))
    });
  }
  return filteredList;
}

String? replaceAll(
  String? variavel,
  String? oquedesejotrocar,
  String? paraoquedesejo,
) {
  String replceStr = variavel!.replaceAll(oquedesejotrocar!, paraoquedesejo!);

  if (replceStr == null) {
    return variavel;
  }

  return replceStr;
}

String? dateHourStringToDateTimeIso8601(
  String? data,
  String? hora,
) {
  if (data == null || hora == null) {
    return null;
  }
  try {
    DateTime date = DateFormat('dd/MM/yyyy').parse(data);
    DateTime time = DateFormat('HH:mm').parse(hora);
    DateTime start =
        DateTime(date.year, date.month, date.day, time.hour, time.minute);
    return start.toIso8601String();
  } catch (e) {
    print('Error parsing date and time: $e');
    return null;
  }
}

dynamic refreshHourWork(
  dynamic workItem,
  int? indexWeekDay,
  int? indexHour,
  String? typeHour,
  String? novoValor,
) {
  workItem["days"][indexWeekDay]["hours"][indexHour][typeHour] = novoValor;
  return workItem;
}

int? lengthElements(List<dynamic>? lista) {
  if (lista != null) {
    return lista.length;
  } else {
    return null;
  }
}

List<int> addIntegerToListInteger(
  List<int> lista,
  int? element,
) {
  if (element != null) {
    lista.add(element);
  }
  return lista;
}

String? formatArrayintoCommaAeparatedString(String? array) {
  String cleanString = array!.replaceAll(RegExp(r'[\[\]]'), '').trim();
  List<String> items =
      cleanString.split(',').map((item) => item.trim()).toList();
  String finalString = items.length > 1
      ? '${items.sublist(0, items.length - 1).join(', ')} e ${items.last}'
      : items.first;
  return finalString;
}

String? formatHour(String? data) {
  try {
    var hora = data?.substring(11, 16).trim();
    return hora;
  } catch (err) {
    return data;
  }
}

String? convertString(String? parameter) {
  // convert parameter  in string
  if (parameter != null) {
    return parameter;
  }
  return null;
}

dynamic convertTextToJson(String stringText) {
  // convert a string to json
  try {
    return jsonDecode(stringText);
  } catch (e) {
    print('Error converting text to JSON: $e');
    return null;
  }
}

String? returnFirstCaracter(String? name) {
  // return first caracter to string name
  if (name != null && name.isNotEmpty) {
    return name.substring(0, 1);
  }
  return "";
}

String traduzirStatus(String originalStatus) {
  // traduz os status para portugues se open ongoing waiting finished canceled
  switch (originalStatus) {
    case 'open':
      return 'Aberto';
    case 'ongoing':
      return 'Em andamento';
    case 'waiting':
      return 'Aguardando';
    case 'finished':
      return 'Finalizado';
    case 'canceled':
      return 'Cancelado';
    case 'pending':
      return 'Pendente';
    default:
      return originalStatus;
  }
}

String moneyFormat(String number) {
  // final format = NumberFormat("###,###.##");
  //return format.format(number);

  final format = NumberFormat.currency(locale: 'pt_BR', symbol: '');
  final doubleValue = double.tryParse(number.replaceAll(',', '.'));
  return format.format(doubleValue);
}

double? convertStringToDouble(String? valor) {
  // conver tString To Double
  try {
    if (valor != null) {
      return double.parse(valor.replaceAll(".", "").replaceAll(",", "."));
    }
  } catch (e) {
    print('Error converting string to double: $e');
  }
  return null;
}
