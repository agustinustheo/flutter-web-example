class AuthService{
  static String url = '';

  static Future<dynamic> login(String email, String password) async{
    try{
      // return jsonDecode((await HttpHelper.getBasic(url, '$email:$password')).body);
      await Future.delayed(Duration(seconds: 1));
      return {'token': 'token'};
    }
    catch(ex){
      throw ex;
    }
  }
  
  static Future<dynamic> register(String email, String password, Map<String, dynamic> body) async{
    try{
      // return jsonDecode((await   HttpHelper.postBasic(url, '$email:$password', body)).body);
      await Future.delayed(Duration(seconds: 1));
      return {'token': 'token'};
    }
    catch(ex){
      throw ex;
    }
  }
}