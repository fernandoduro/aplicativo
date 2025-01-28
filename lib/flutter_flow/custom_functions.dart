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
  if (phone == null || phone.length < 9) {
    return phone;
  }

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

  // Expressão regular para validar o formato de hora (HH:mm)
  final horaRegex = RegExp(r'^([01]\d|2[0-3]):[0-5]\d$');

  if (!horaRegex.hasMatch(hora)) {
    print('Hora inválida: $hora');
    return null;
  }

  try {
    DateTime date = DateFormat('dd/MM/yyyy').parse(data);
    List<String> horaParts = hora.split(':');
    int hour = int.parse(horaParts[0]);
    int minute = int.parse(horaParts[1]);

    DateTime start = DateTime(date.year, date.month, date.day, hour, minute);
    return start.toIso8601String();
  } catch (e) {
    print('Erro ao converter data e hora: $e');
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
  try {
    if (lista != null) {
      return lista.length;
    } else {
      return 0;
    }
  } catch (err) {
    return 0;
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

String? convertDescriptionToMarkdown(String? description) {
  // Perform the replacements to convert the description to standard Markdown
  return description
      // Replace newlines with actual line breaks for Markdown
      ?.replaceAll('\\n', '\n') // Keeping \n for Markdown line breaks

      // Replace bold tags with ** for Markdown bold
      .replaceAll('[b]', '**')
      .replaceAll('[/b]', '**')

      // Replace italic tags with * for Markdown italics
      .replaceAll('[i]', '*')
      .replaceAll('[/i]', '*')

      // Replace underline tags (Markdown does not directly support underline, so you may leave it as is or skip it)
      .replaceAll('[u]', '')
      .replaceAll('[/u]', '')

      // Replace unordered list tags with - for Markdown unordered lists
      .replaceAll('[ul]', '')
      .replaceAll('[/ul]', '')
      .replaceAll('[li indent=0 align=left]',
          '- ') // Use "- " for list items in Markdown
      .replaceAll('[/li]', '')

      // Replace multi-line list tags with normal lists in Markdown
      .replaceAll('[ml]', '')
      .replaceAll('[/ml]', '')

      // Replace headings with # and ## for Markdown headings
      .replaceAll('[h1]', '# ')
      .replaceAll('[/h1]', '')
      .replaceAll('[h2]', '## ')
      .replaceAll('[/h2]', '')

      // Replace blockquote with > for Markdown blockquote
      .replaceAll('[quote]', '> ')
      .replaceAll('[/quote]', '')

      // Markdown does not support horizontal rules directly, so you can use --- or ***
      .replaceAll('[hr]', '---')

      // Replace image tags with ![alt text](URL) for Markdown images
      .replaceAllMapped(RegExp(r'\[img\](.*?)\[\/img\]'), (match) {
        return '![](${match.group(1)})';
      })

      // Replace links with [text](URL) for Markdown links
      .replaceAllMapped(RegExp(r'\[a href=(.*?)\](.*?)\[\/a\]'), (match) {
        return '[${match.group(2)}](${match.group(1)})';
      })

      // Replace color tags (Markdown doesn't support color, so leave them out)
      .replaceAll(RegExp(r'\[color=#([A-Fa-f0-9]{6})\]'), '')
      .replaceAll('[/color]', '')

      // Replace size tags (Markdown doesn't support font size, so leave them out)
      .replaceAll(RegExp(r'\[size=(.*?)\]'), '')
      .replaceAll('[/size]', '')

      // Replace alignment tags (Markdown doesn't support text alignment, so leave them out)
      .replaceAll('[align=center]', '')
      .replaceAll('[align=left]', '')
      .replaceAll('[align=right]', '')
      .replaceAll('[/align]', '');
}

List<dynamic>? removeDuplicatesListJson(List<dynamic>? listElements) {
  // remove duplicates to listElements
  if (listElements == null) {
    return null;
  }

  List<dynamic> uniqueList = [];
  Set<String> uniqueSet = Set();

  for (dynamic element in listElements) {
    String jsonStr = jsonEncode(element);
    if (!uniqueSet.contains(jsonStr)) {
      uniqueList.add(element);
      uniqueSet.add(jsonStr);
    }
  }

  return uniqueList;
}

String? transformArrayToString(dynamic campo) {
  // transform "campo" to string
  if (campo is List) {
    return campo.join(' ');
  } else {
    return campo.toString();
  }
}
