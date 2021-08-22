import 'package:chatbot/domain/fetchdata/userinput.action.dart';
import 'package:chatbot/domain/store/app.state.dart';
import 'package:chatbot/presentation/screens/Android/chatspage/chatlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ChatList(), TextFieldWidget()],
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController _textEditingController = TextEditingController();
  FocusNode _myFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
    _myFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: AppBar().preferredSize.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _textEditingController,
                focusNode: _myFocusNode,
              ),
            ),
            IconButton(onPressed: onIconButtonPressed, icon: Icon(Icons.send))
          ],
        ));
  }

  void onIconButtonPressed() {
    StoreProvider.of<AppState>(context)
        .dispatch(UserInputAction(input: _textEditingController.value.text));
    _myFocusNode.unfocus();
  }
}
