import 'package:chatbot/domain/fetchdata/fetchdata.state.dart';
import 'package:chatbot/domain/store/app.state.dart';
import 'package:chatbot/presentation/screens/Android/chatspage/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FetchdataState>(
      converter: (store) => store.state.fetchdataState,
      builder: (context, vm) => Container(
          height: MediaQuery.of(context).size.height -
              2.3 * AppBar().preferredSize.height,
          color: Colors.amber,
          child: ListView.builder(
            itemBuilder: (context, index) => LimitedBox(
              maxHeight: MediaQuery.of(context).size.height / 2,
              maxWidth: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  vm.data.length > 0
                      ? Row(
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              child: Image.asset(
                                'assets/icons/robo_chat.png',
                                fit: BoxFit.contain,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                  child: CustomListTile(
                                key: key,
                                message: vm.data[index],
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
            itemCount: vm.counter,
          )),
    );
  }
}
