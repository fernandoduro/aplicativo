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
  filteredList = rest.firstWhere((val) => val["id"].toString() == profselected);
  if (filteredList == null) {
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
  return int.parse(parametro!);
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
  if (lista[coluna] != null) {
    if (!lista[coluna].contains(element)) {
      lista[coluna].add(element);
    }
  }
  return lista;
}

String? convertJsonToString(dynamic lista) {
  return lista + "";
}

dynamic removeDuplicateDomainSugestionsArray(dynamic lista) {
  var notDuplicate = lista['sugestions'].toSet().toList();
  lista['sugestions'] = notDuplicate;
  return lista;
}
