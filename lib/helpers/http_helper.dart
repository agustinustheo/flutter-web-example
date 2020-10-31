import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper{
  static Future<http.Response> get(String url) async{
    try{
      var res = await http.get(url);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> getBasic(String url, String value) async{
    try{
      value = base64.encode(utf8.encode(value));
      var res = await http.get(url, headers: {'Authorization': 'Basic $value'});
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> getBearer(String url, String value) async{
    try{
      var res = await http.get(url, headers: {'Authorization': 'Bearer $value'});
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> post(String url, Map<String, dynamic> body) async{
    try{
      var res = await http.post(url, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> postBasic(String url, String value, Map<String, dynamic> body) async{
    try{
      value = base64.encode(utf8.encode(value));
      var res = await http.post(url, headers: {'Authorization': 'Basic $value'}, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> postBearer(String url, String value, Map<String, dynamic> body) async{
    try{
      var res = await http.post(url, headers: {'Authorization': 'Bearer $value'}, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> put(String url, Map<String, dynamic> body) async{
    try{
      var res = await http.put(url, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> putBasic(String url, String value, Map<String, dynamic> body) async{
    try{
      value = base64.encode(utf8.encode(value));
      var res = await http.put(url, headers: {'Authorization': 'Basic $value'}, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> putBearer(String url, String value, Map<String, dynamic> body) async{
    try{
      var res = await http.put(url, headers: {'Authorization': 'Bearer $value'}, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> patch(String url, Map<String, dynamic> body) async{
    try{
      var res = await http.patch(url, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> patchBasic(String url, String value, Map<String, dynamic> body) async{
    try{
      var res = await http.patch(url, headers: {'Authorization': 'Basic $value'}, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> patchBearer(String url, String value, Map<String, dynamic> body) async{
    try{
      var res = await http.patch(url, headers: {'Authorization': 'Bearer $value'}, body: body);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> delete(String url) async{
    try{
      var res = await http.delete(url);
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> deleteBasic(String url, String value) async{
    try{
      var res = await http.delete(url, headers: {'Authorization': 'Basic $value'});
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }
  static Future<http.Response> deleteBearer(String url, String value) async{
    try{
      var res = await http.delete(url, headers: {'Authorization': 'Bearer $value'});
      if(isSuccessStatusCode(res)) return res;
      else throw new Exception('Something went wrong, please try again later.');
    }
    catch(ex){
      throw ex;
    }
  }

  static bool isSuccessStatusCode(http.Response res){
    if(res.statusCode >= 200 && res.statusCode < 300) return true;
    else return false;
  }
}