import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  final String otp;

  OTPPage(this.otp);

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (_) => FocusNode());
    _controllers = List.generate(4, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _verifyOTP() {
    final enteredOTP = _controllers.map((controller) => controller.text).join('');

    if (enteredOTP == widget.otp) {
      // OTP matched, show success message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Congratulations'),
          content: Text('OTP matched!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context); // Go back to sign-in page
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // OTP didn't match, show failure message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Failed'),
          content: Text('OTP didn\'t match.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'An OTP has been sent to your phone. Please enter it below:',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    focusNode: _focusNodes[index],
                    onChanged: (String value) {
                      if (value.isNotEmpty && index < 3) {
                        _focusNodes[index].unfocus();
                        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                      } else if (value.isEmpty && index > 0) {
                        _focusNodes[index].unfocus();
                        FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
                      }
                    },
                    decoration: InputDecoration(
                      counter: Offstage(),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _verifyOTP,
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
