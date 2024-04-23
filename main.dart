import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TRADE FINDER',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('TRADE FINDER'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ProfileHeader(),
          PersonalInfo(),
          SubscriptionSection(),
          Buttons(),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/pp.jpg'),
          ),
          SizedBox(height: 8.0),
          Text(
            'Hazem Alaa',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Lorem ipsum is simply dummy text of the printing and typesetting.',
          ),
        ],
      ),
    );
  }
}

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('PERSONAL', style: TextStyle(fontWeight: FontWeight.bold)),
          InfoRow(title: 'First Name', value: 'Hazem'),
          InfoRow(title: 'Last Name', value: 'Alaa'),
          InfoRow(title: 'Email', value: 'hazemalaa@gmail.com'),
          InfoRow(title: 'Phone', value: '01234567890'),
          InfoRow(title: 'Second Phone', value: '01112223334'),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  InfoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}

class SubscriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('SUBSCRIPTION', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('You can use a free trial for 3 months.'),
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
            },
            child: Text('VIEW MY LISTINGS'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white)
          ),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Text('DELETE ACCOUNT'),
          ),
        ],
      ),
    );
  }
}
