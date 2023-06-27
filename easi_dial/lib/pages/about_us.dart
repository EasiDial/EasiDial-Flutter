import 'package:easi_dial/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUsPage> {
  bool _isExpanded = false;
  double titleFontSize = 20.0, subTitleFontSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          'assets/easidial_logo1.jpeg',
          width: 100,
          height: 100,
        ),
        const Text(
          'EasiDial Care',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Version 1.0.0',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        const Text(
          'EasiDial Care is a mobile application that allows users to easily access medical services. The application allows users to access contact information for Hospitals and Ambulances essential in completing tasks like booking appointments with doctors, nurses, and other medical professionals.',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        const Text(
          'EasiDial Care also offers a platform to learn about the common health issues and emergencies. This is essential in helping users to make informed decisions about their health.',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        const Text(
          'Utility Information',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        //FIXME Items with list
        /*
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: ListView(
              children: [
                const ListTile(
                  title: Text('Utility Information'),
                ),
                ListTile(
                  onTap: () {
                    makePhoneCall();
                  },
                  leading: const Icon(
                    Icons.phone_outlined,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Call Us',
                    style: TextStyle(fontSize: titleFontSize),
                  ),
                  subtitle: Text(
                    '  +254115197294',
                    style: TextStyle(fontSize: subTitleFontSize),
                  ),
                ),
                ListTile(
                  onTap: () {
                    openWhatsApp();
                  },
                  leading: const Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                  ),
                  title: Text(
                    'WhatsApp Us',
                    style: TextStyle(fontSize: titleFontSize),
                  ),
                  subtitle: Text(
                    '+254115197294',
                    style: TextStyle(fontSize: subTitleFontSize),
                  ),
                )
              ],
            )),
            */
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Terms of Use',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 20.0,
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Container(
              padding: const EdgeInsets.only(left: 16.0),
              child: const Column(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'These Terms of Use govern your use of the EasiDial Care mobile application. By using, visiting, or browsing the EasiDial Care mobile application, you accept and agree to be bound by these Terms of Use. If you do not agree to these Terms of Use, you should not use the EasiDial Care mobile application. These Terms of Use are an ongoing contract between you and EasiDial Care and apply to your use of the EasiDial Care mobile application. These Terms of Use affect your rights and you should read them carefully',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Changes to Terms of Use',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'EasiDial Care reserves the right, from time to time, with or without notice to you, to change these Terms of Use in our sole and absolute discretion. The most current version of these Terms of Use can be reviewed by clicking on the “Terms of Use” located at the bottom of the pages of the EasiDial Care mobile application. The most current version of the Terms of Use will supersede all previous versions. Your use of the EasiDial Care mobile application or continued use of our service after changes are made means that you agree to be bound by such changes.',
                  ),
                  Text(
                    'Privacy',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Please review our Privacy Policy, which also governs your visit to the EasiDial Care mobile application, to understand our practices.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Electronic Communications',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'When you use the EasiDial Care mobile application, or send e-mails, text messages, and other communications from your desktop or mobile device to us, you are communicating with us electronically. You consent to receive communications from us electronically, such as e-mails, texts, mobile push notices, or notices and messages on this site or through the other EasiDial Care mobile application, such as our Message Center, and you can retain copies of these communications for your records. You agree that all agreements, notices, disclosures, and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Your Account',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'If you use the EasiDial Care mobile application, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your mobile device, and you agree to accept responsibility for all activities that occur under your account or password. EasiDial Care does sell products for children, but it sells them to adults, who can purchase with a credit card or other permitted payment method. If you are under 18, you may use the EasiDial Care mobile application only with involvement of a parent or guardian. EasiDial Care reserves the right to refuse service, terminate accounts, terminate your rights to use the EasiDial Care mobile application, remove or edit content, or cancel orders in its sole discretion.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'License and Access',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Subject to your compliance with these Terms of Use and your payment of any applicable fees, EasiDial Care or its content providers grant you a limited, non-exclusive, non-transferable, non-sublicensable license to access and make personal and non-commercial use of the EasiDial Care mobile application. This license does not include any resale or commercial use of any EasiDial Care mobile application, or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of any EasiDial Care mobile application or its contents; any downloading, copying, or other use of account information for the benefit of any third party; or any use of data mining, robots, or similar data gathering and extraction tools. All rights not expressly granted to you in these Terms of Use or any Service Terms are reserved and retained by EasiDial Care or its licensors, suppliers, publishers, rightsholders, or other content providers.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'No EasiDial Care mobile application, nor any part of any EasiDial Care mobile application, may be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without express written consent of EasiDial Care. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of EasiDial Care without express written consent. You may not use any meta tags or any other “hidden text” utilizing EasiDial Care’s name or trademarks without the express written consent of EasiDial Care. You may not misuse the EasiDial Care mobile application. You may use the EasiDial Care mobile application only as permitted by law. The licenses granted by EasiDial Care terminate if you do not comply with these Terms of Use or any Service Terms.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              )),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 20.0,
              ),
            ],
          ),
        ),
        if (_isExpanded)
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8.0),
            child: Column(children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'EasiDial Care is committed to protecting your privacy. This Privacy Policy applies to those who visit the EasiDial Care mobile application, but do not make a purchase, and those who make a purchase. This Privacy Policy describes how we collect, use, disclose, and protect the information of those using the EasiDial Care mobile application. By visiting and/or using the EasiDial Care mobile application on any computer, mobile phone, tablet, console, or other device (collectively, “Device”), you consent to the practices described in this Privacy Policy.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Information We Collect',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'We collect a variety of information from our customers and visitors to the EasiDial Care mobile application. As described below, some information is automatically collected when you visit our site or use our Services, some you provide to us when you register for or use the Services, and some we collect from other sources.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Information Collected Automatically: Whenever you visit the EasiDial Care mobile application, we automatically collect (non-invasively where possible) information about your transactions with us, and your use of our mobile application and Services. For example, we automatically collect your IP address, for EasiDial Care internal use only, such as to help us diagnose problems with our server and administer our mobile application. We also automatically track certain information about your activities on our mobile application such as the type of web browser you are using and click stream data. If you are a registered EasiDial Care customer, we link this automatically-collected data to the Personal Information we collect to help us customize your experience on the EasiDial Care mobile application and improve our Services.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Information You Provide to Us: In addition to the information automatically collected by your browser or mobile device when you visit or use our Services, you also provide information to us when you use the EasiDial Care mobile application and Services. For example, we collect Personal Information from you when you register for an account, update your account information, make a purchase, interact with our customer service representatives, complete a survey, or otherwise interact with us. We also collect Personal Information from you offline, such as when you place an order over the phone or contact customer service.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Information from Other Sources: We may also obtain information about you from other sources and combine that with information we collect about you. For example, we collect information from third parties (such as when you log in using a third-party service, or when you make a payment using a third-party service such as PayPal) and from publicly available sources (such as for fraud prevention purposes).',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'How We Use Your Information',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'We use the information we collect from you for a variety of purposes, including to:',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Provide, maintain, and improve our Services, including to process transactions, develop new products and services, and manage the performance of our Services;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Provide and deliver the products and services you request, process transactions, and send you related information, including confirmations and receipts;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Send you technical notices, updates, security alerts, and support and administrative messages;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Respond to your comments, questions, and requests, and provide customer service;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Communicate with you about products, services, offers, promotions, and events, and provide other news and information we think will be of interest to you (for information about how to manage these communications, please see “Your Choices” below);',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Monitor and analyze trends, usage, and activities in connection with our Services;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Detect, investigate, and prevent fraudulent transactions and other illegal activities and protect the rights and property of EasiDial Care and others;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '• Personalize and improve the Services, and provide advertisements, content, or features that match user profiles or interests;',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Your Choices',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'We offer you certain choices about what information we collect from you, how we use and disclose the information we collect, and how we communicate with you. You may withdraw any consent you previously provided to us or object at any time on legitimate grounds and free of charge to the processing of your personal information, and we will apply your preferences going forward. You can choose not to receive marketing communications from us by clicking on the unsubscribe link in our marketing emails, by contacting us as specified in the “How to Contact Us” section below, or by following the instructions in the “Your Choices Regarding Your Personal Information” section of our Privacy Policy. Please include your name, email address, and postal address if you send us your request by email or postal mail. Please allow a reasonable time for us to process your request.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Please note that if you do not want us to collect information from you, you will not be able to take advantage of many of the features of the EasiDial Care mobile application.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Accessing and Correcting Your Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'You can review and change your personal information by logging into the EasiDial Care mobile application and visiting your account profile page. You may also send us an email at getintouchdesk@gmail.com to request access to, correct, or delete any personal information that you have provided to us. We cannot delete your personal information except by also deleting your user account. We may not accommodate a request to change information if we believe the change would violate any law or legal requirement or cause the information to be incorrect.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ]),
          )
      ]),
    );
  }
}
