import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text('Confirmation'),
      content: Text('Submitting information'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.yellow,
          padding: const EdgeInsets.all(12),
          textStyle: const TextStyle(fontSize: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 3,
            bottom: 3,
          ),
          child: Text(
            'Submit',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        onPressed: () => {
          alertMsg(context),
        },
      ),
    );
  }
}
