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

bool? existElementList(List<dynamic>? itens) {
  return itens!.length > 0;
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

  List<dynamic> uniqueItems = []; // uniqueList
  var uniques = duplicates
      .map((e) => e['label'])
      .toSet(); //list if label to remove duplicates
  uniques.forEach((e) {
    uniqueItems.add(duplicates.firstWhere((i) => i['label'] == e));
  });

  return uniqueItems;

  // return lista1! + lista2!;

  // return lista1!.addAll(lista2!);
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
  List<dynamic> uniqueItems = []; // uniqueList
  var uniques = duplicates
      .map((e) => e[coluna])
      .toSet(); //list if label to remove duplicates
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
  // return the character at position inputVal or an empty string if inputVal is null
  const String emojis = "👍😊🤣🥳💕😍😘💋🤪🔥😇😈🥱🙄😮🙁😠👎";
  // Ensure the index is not null and within the bounds of the emojis string.
  if (index == null || index < 0 || index >= emojis.runes.length) {
    return '';
  }

  // Convert the emojis string to a list of Runes (unicode scalar values).
  List<int> emojiRunes = emojis.runes.toList();

  // Return the emoji at the specified index.
  return String.fromCharCode(emojiRunes[index]);
}

String? removeNullString(String? parameter) {
  if (parameter == null || parameter == "null") {
    return "";
  }
  return parameter;
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

String? firstName(String? fullName) {
  if (fullName == null) {
    return null;
  }
  final splitName = fullName.split(' ');
  return splitName.isNotEmpty ? splitName.first : null;
}

String? formatMaskPhone(String? phone) {
  final cleanPhone = phone?.replaceAll(RegExp(r'[^\d]'), '');

  final areaCode = cleanPhone?.substring(0, 2);
  final firstPart = cleanPhone?.substring(2, 7);
  final secondPart = cleanPhone?.substring(7);
  return '($areaCode) $firstPart-$secondPart';
}

bool? existeElementSpecifcList(
  dynamic lista,
  String? elemento,
) {
  return lista!.contains(elemento);
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
