import 'dart:convert';

import 'package:bytebank2/http/webclient.dart';
import 'package:http/http.dart';

import '../../models/transaction.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response =
    await client.get(baseUrl).timeout(const Duration(seconds: 5));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction> save(Transaction transaction, String password) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response = await client.post(baseUrl,
        headers: {
          'Content-type': 'application/json',
          'password': password,
        },
        body: transactionJson);

    return Transaction.fromJson(jsonDecode(response.body));
  }

}