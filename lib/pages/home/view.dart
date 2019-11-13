import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_crawler/pages/mine/page.dart';
import 'package:fish_redux_crawler/pages/news/page.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {

  var _pageList = [NewsPage().buildPage(null), MinePage().buildPage(null)];

  return Container(
    child: Scaffold(
      body: _pageList[state.index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.card_membership), title: Text('News')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Mine'))
        ],
        currentIndex: state.index,
        onTap: (int index) {
          dispatch(HomeActionCreator.onSwitchIndex(index));
        },
      ),
    ),
  );
}
