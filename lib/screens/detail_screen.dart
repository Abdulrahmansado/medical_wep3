import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';

class DetailScreen extends StatefulWidget {
  final String image;

  DetailScreen(this.image);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final TextEditingController _controller = TextEditingController();
  String _photoDetails = '';

  @override
  void initState() {
    super.initState();
    _loadPhotoDetails();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _loadPhotoDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _photoDetails = prefs.getString(widget.image) ?? '';
      _controller.text = _photoDetails;
    });
  }

  Future<void> _savePhotoDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(widget.image, _photoDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Details Screen",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                height: 500,
                width: 500,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: TextField(
                maxLines: null,
                style: TextStyle(color: Colors.green, fontSize: 20),
                controller: _controller,
                onChanged: (value) {
                  setState(() {
                    _photoDetails = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter photo details...',
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                await _savePhotoDetails();
                //Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ),
        ],
      ),
    );
  }
}
