import 'package:flutter/material.dart';
import './shiba_image.dart';
import 'submit_button.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 70,
      ),
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: Text(
                  'Chakphet Phachanawan',
                  style: TextStyle(
                    fontSize: 25,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '61304006-1',
                  style: TextStyle(
                    fontSize: 25,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: Text(
                  'Photo Credits:',
                  style: TextStyle(
                    fontSize: 25,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '@kiba0601',
                  style: TextStyle(
                    fontSize: 25,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: ShibaImageAsset(),
          ),
          const SubmitButton()
        ],
      ),
    );
  }
}
