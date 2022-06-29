import 'package:http/http.dart'as http;
import 'dart:convert';
class NetworkHelper
{
  final String url;
  NetworkHelper({this.url});
  Future getData() async
  {
    http.Response response=await http.get(Uri.parse(url));
    //we are using http. as i changed name of library as http
    if(response.statusCode==200)
    {
      String data = response.body;
      var DecodeData=jsonDecode(data);
      return DecodeData;
    }
    else
    {
      print(response.statusCode);
    }
  }
}