import "package:flutter/material.dart";
import 'package:gmail_clone/models/email.dart';
import "../../widgets//email_list.dart";

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Widget build(context) {
    List<EmailModel> emails = createDefaultEmails();
    return Scaffold(
      appBar: AppBar(
        title: Text("Unread"),
        leading: Icon(Icons.menu),
        actions: <Widget>[Icon(Icons.search)],
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: EmailListWidget(emails),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
    );
  }

  updateState() {
    setState(() {});
  }

  List<EmailModel> createDefaultEmails() {
    List<EmailModel> list = [];
    for (var i = 0; i < 10; i++) {
      var email = new EmailModel(
          from: "Amazon Alexa Team",
          title: "This October build Alexa Skills",
          time: "10.57 A.M",
          body:
              "Laboris tempor enim dolor aliqua enim.\nQuis sint exercitation deserunt dolore deserunt irure consequat ex ex velit laborum non non elit. Duis ea sint voluptate nostrud ipsum amet id sunt tempor pariatur. Ex proident nostrud magna esse ea enim adipisicing ullamco nulla aliquip laborum amet anim adipisicing. Excepteur laboris occaecat id qui fugiat reprehenderit pariatur fugiat id. Commodo laborum non exercitation excepteur anim laborum consectetur velit est ad excepteur cillum elit nostrud. Culpa tempor esse irure do ex irure adipisicing veniam minim. Irure qui dolore mollit velit. Minim reprehenderit ullamco mollit officia mollit pariatur labore sunt. Id officia amet amet dolor excepteur officia do eu elit. Consectetur commodo culpa excepteur velit excepteur incididunt et commodo mollit consectetur culpa reprehenderit. Cupidatat nulla velit ea ad veniam culpa enim est.Adipisicing nisi enim enim officia id velit id cupidatat pariatur mollit laborum culpa. Nostrud velit elit quis adipisicing exercitation commodo anim velit laboris. Sint aliquip eu id deserunt reprehenderit deserunt esse ipsum anim dolor. Officia duis sint deserunt nisi occaecat sint nisi excepteur. Occaecat officia deserunt non eiusmod deserunt sint et velit aliqua minim in ut. Sunt consectetur amet fugiat enim anim consectetur qui commodo exercitation. Sint aute reprehenderit nisi sunt velit cupidatat magna nulla quis mollit deserunt ipsum minim.Culpa officia ea eiusmod ea laborum. Enim ullamco id id pariatur veniam dolore. Proident exercitation ad adipisicing culpa. Magna cupidatat esse ea velit laboris sunt incididunt quis pariatur amet. Ut do laborum nisi occaecat aliqua do quis occaecat nostrud cupidatat eu occaecat aliqua. Ea veniam eu Lorem non ut fugiat irure ea proident in ullamco nostrud proident. Cupidatat labore cillum deserunt excepteur fugiat et occaecat dolore ea id id officia.Excepteur enim ut ea aute magna do est ipsum enim voluptate quis eiusmod. Voluptate id sunt magna ea sint commodo. Exercitation cupidatat eiusmod nostrud esse qui ea. Duis eu id labore dolor quis nulla eu ad. Eiusmod minim elit officia id laboris consequat do labore laborum. Lorem do anim ea excepteur exercitation voluptate minim culpa laborum sunt aliqua reprehenderit officia.");
      list.add(email);
    }
    return list;
  }
}
