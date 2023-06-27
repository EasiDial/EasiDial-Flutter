import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({superKey}) : super(key: superKey);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String? _feedback;
  bool loading = false;
  InputBorder textFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
  );

  sendFeedback() {
    if (_globalKey.currentState!.validate()) {
      //TODO Implement send feedback
    }
  }

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Feedback'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'We would love to hear from you!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Help us improve by sending us your feedback and we will get back to you as soon as possible.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Thank you!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'EasiDial Team',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: SingleChildScrollView(
                  child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.send,
                        autofocus: true,
                        minLines: 10,
                        maxLines: 10,
                        decoration: InputDecoration(
                          hintText: "Enter Feedback",
                          labelStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                          enabledBorder: textFieldBorder,
                          focusedBorder: textFieldBorder,
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red)),
                          focusedErrorBorder: textFieldBorder,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ooops! Cannot send empty feedback!';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          _feedback = value;
                        },
                        onFieldSubmitted: (value) {
                          _feedback = value;
                          sendFeedback();
                        },
                      ),
                      const SizedBox(height: 16.0),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () async {
                                sendFeedback();
                              },
                              child: loading
                                  ? SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    )
                                  : Text(
                                      'Send',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    )))
                    ],
                  ),
                ),
              )),
            ),
          ],
        ));
  }
}
