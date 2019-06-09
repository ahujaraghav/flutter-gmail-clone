import "package:flutter/material.dart";
import 'package:gmail_clone/models/email.dart';
import 'package:gmail_clone/screens/mail/index.dart';

class EmailListWidget extends StatelessWidget {
  final List<EmailModel> emails;
  EmailListWidget(this.emails);

  Widget build(context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          height: 20,
        );
      },
      itemCount: emails.length,
      itemBuilder: (context, index) {
        return EmailTile(emails[index]);
      },
    );
  }
}

class EmailTile extends StatefulWidget {
  final EmailModel email;
  EmailTile(this.email);
  EmailTileState createState() => EmailTileState(email);
}

class EmailTileState extends State<EmailTile> {
  EmailModel email;
  EmailTileState(this.email);
  build(context) {
    return ListTile(
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
      onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmailView(email)),
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
            Text(
              email.time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          email.title,
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  email.body,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InkWell(
                child: Icon(
                  email.favourite ? Icons.star : Icons.star_border,
                ),
                onTap: () {
                  setState(() {
                    email.favourite = !email.favourite;
                  });
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
