import 'package:fish_redux/fish_redux.dart';

class NewsState implements Cloneable<NewsState> {

  @override
  NewsState clone() {
    return NewsState();
  }
}

NewsState initState(Map<String, dynamic> args) {
  return NewsState();
}
