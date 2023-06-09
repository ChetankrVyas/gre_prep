import 'package:flutter/material.dart';

class MyOpening extends StatefulWidget {
  const MyOpening({super.key});

  @override
  State<MyOpening> createState() => _MyOpeningState();
}

class _MyOpeningState extends State<MyOpening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Phone Verification',
              style: TextStyle(fontSize: 22),
            ),
             SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, "phone", (route) => false);

              }, child: const Text('Continue with phone number')),
            ),
            const Text('By continuing, you agree to our Terms. See how we use your data in our Privacy Policy')
          ],
        ),
      ),
    );
  }
}
