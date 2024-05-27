
class  AppExceptions implements Exception{
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);
  /*toString() start here*/
  String toString(){
    return '$_prefix$_message';
  }
/*toString() end here*/
}

/*InternetException start here*/
class InternetException extends AppExceptions{
  InternetException([String? message]):super(message,'No Internet');
}
/*InternetException end here*/
/*RequestTimeOut start here*/
class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? message]):super(message,'Request Time Out');
}
/*RequestTimeOut end here*/
/*ServerException start here*/
class ServerException extends AppExceptions{
  ServerException([String? message]):super(message,'Internal Server Error');
}
/*ServerException end here*/
/*InvalidUrlException start here*/
class InvalidUrlException extends AppExceptions{
  InvalidUrlException([String? message]):super(message,'Invalid Url');
}
/*InvalidUrlException end here*/
/*InvalidUrlException start here*/
class FetchDataException extends AppExceptions{
  FetchDataException([String? message]):super(message,'Error while communication');
}
/*InvalidUrlException end here*/