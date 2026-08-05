import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
    body: Container(
    width: double.infinity,
    height: double.infinity,
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
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/me.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Center(child: Text("Hello I am",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 20),),),),
          Container(
            child: Center(child: Text("Mohannad Osama",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 30),),),),
          Container(
            child: Center(child: Text("Flutter Developer",style: TextStyle(color: const Color.fromARGB(255, 0, 187, 255),fontSize: 20),),),),
          Container(
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
              InkWell(
                onTap: () async {
                await launchUrl(Uri.parse("https://www.facebook.com/share/14mNZQ1JCSF/"));
                },
                child: Image.asset("assets/images/facebook.png", width: 35),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () async {
                await launchUrl(Uri.parse("https://x.com/mohanadosama987"));
                },
                child: Image.asset("assets/images/twitter.png", width: 35),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () async {
                await launchUrl(Uri.parse("https://www.instagram.com/mohannad.901?igsh=MWg3Z3c1c2J3cHR5dw=="));
                },
                child: Image.asset("assets/images/instagram.png", width: 35),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () async {
                await launchUrl(Uri.parse("https://www.linkedin.com/in/mohanad-osama-2b2137332?utm_source=share_via&utm_content=profile&utm_medium=member_android"));
                },
                child: Image.asset("assets/images/linkedin.png", width: 35),
              ),
            ],
          )
        ],        
      ),       
    ),
  ),
)
);
}