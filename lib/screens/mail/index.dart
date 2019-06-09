import 'package:flutter/material.dart';
import 'package:gmail_clone/models/email.dart';

class EmailView extends StatelessWidget {
  final EmailModel email;
  EmailView(this.email);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Container(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.file_download),
                  Icon(Icons.delete),
                  Icon(Icons.mail),
                  Icon(Icons.menu)
                ],
              ),
            ),
          ],
          backgroundColor: Colors.red,
        ),
        body: emailBody(email));
  }

  emailBody(email) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            child: Text(
              email.title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: email.color,
                    ),
                    child: Text(
                      email.from[0],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: buildTitle(email),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    email.body,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildTitle(EmailModel email) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              email.from,
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(children: [
              Icon(Icons.reply),
              Icon(Icons.menu),
            ])
          ],
        ),
        Text(
          "to me",
          style: TextStyle(
              // fontWeight: FontWeight.w800,
              ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  email.time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
