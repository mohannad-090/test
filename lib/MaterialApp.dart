import 'package:flutter/material.dart';
import 'package:test/custom_container.dart';
import 'package:test/social_links.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
    body: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/p.jpg"),
        fit: BoxFit.cover,
      ),
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          CustomContainer(
            images: "assets/images/me.jpeg",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10,),
          Center(child: Text("Hello I am",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 20),),),
          Center(child: Text("Mohannad Osama",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 30),),),
          Center(child: Text("Flutter Developer",style: TextStyle(color: const Color.fromARGB(255, 0, 187, 255),fontSize: 20),),),
          SizedBox(
            width: 300,
            child: Center(child: Text("Passionate about building beautiful apps and great user experiences.",textAlign: TextAlign.center,style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 15),),),),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              final Uri url = Uri.parse("https://wa.me/+201153972285");
              await launchUrl(url, mode: LaunchMode.externalApplication);
            },
            child: Text("Hire Me"),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialLink(
                image: "assets/images/facebook.png",
                url: "https://www.facebook.com/share/14mNZQ1JCSF/",
              ),

              const SizedBox(width: 20),

              SocialLink(
                image: "assets/images/twitter.png",
                url: "https://x.com/mohanadosama987",
              ),

              const SizedBox(width: 20),

              SocialLink(
                image: "assets/images/instagram.png",
                url: "https://www.instagram.com/mohannad.901",
              ),

              const SizedBox(width: 20),

              SocialLink(
                image: "assets/images/linkedin.png",
                url: "https://www.linkedin.com/in/mohanad-osama-2b2137332",
              ),
            ],
          )
          ]
      )
    )
    )
    );
  }
}