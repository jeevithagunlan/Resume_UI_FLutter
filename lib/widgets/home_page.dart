import 'package:flutter/material.dart';

class Home_Widget_UI extends StatefulWidget {
  const Home_Widget_UI({super.key});

  @override
  State<Home_Widget_UI> createState() => _Home_Widget_UIState();
}

class _Home_Widget_UIState extends State<Home_Widget_UI> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              // Profile Header
              Stack(
                children: [
                  Container(
                    height: 250,
                    color: const Color.fromARGB(255, 254, 254, 254),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://t3.ftcdn.net/jpg/05/11/93/68/360_F_511936804_X8UAgTtvhTIFSdL9TCTnpankfRVcBALF.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/j.jpg'),
                            radius: 65,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Name and Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "JEEVITHA GUNALAN",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Android Developer",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 13, 93, 158),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),

              // Contact Info
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    roWIconText(Icons.email, 'jeevithaguna1810@gmail.com'),
                    roWIconText(Icons.phone, '+91 6381791192'),
                  ],
                ),
              ),
              Divider(),

              // Profile Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingTitle('PROFILE :'),
                    SizedBox(height: 10),
                    sectionText(
                      'MCA graduate with 3 years of experience and 1 year of internship experience as a Software Developer Intern, strong in problem-solving and software development fundamentals, with practical experience in building and testing applications.',
                    ),
                    SizedBox(height: 20),
                    HeadingTitle('EXPERIENCE :'),
                    SizedBox(height: 10),
                    SubHeadingTitle('Company Name: Stemx India'),
                    sectionText('year : May 2024 – Apr 2025'),
                    sectionText('Role : Stemx Engineering'),
                    SubHeadingTitle('Company Name : VRS Enterprises'),
                    sectionText('year :Jan 2023- jan 2024'),
                    sectionText('Role : Software Developer Intern'),
                    SizedBox(height: 10),
                    SubHeadingTitle('Company Name : First American '),
                    sectionText('year :Nov 2020 - Aug 2022'),
                    sectionText('Role : Process Associate'),

                    SizedBox(height: 20),
                    HeadingTitle('SKILLS :'),
                    SizedBox(height: 10),
                    SubHeadingTitle('Front End:'),
                    sectionText('HTML & CSS, Dart and Flutter :'),
                    SubHeadingTitle('Database:'),
                    sectionText('SQL & MySQL, Firebase'),
                    SubHeadingTitle('Tools & IDEs:'),
                    sectionText(
                      'GitHub, Postman, VS Code, Eclipse IDE, Arduino',
                    ),
                    SubHeadingTitle('Operating System:'),
                    sectionText('Linux'),
                    SubHeadingTitle('Networking:'),
                    sectionText('Computer Networks'),

                    /* 'Front End: HTML & CSS, Dart and Flutter\n'
                      'Database: SQL & MySQL, Firebase\n'
                      'Tools & IDEs: GitHub, Postman, VS Code, Eclipse IDE, Arduino IDE\n'
                      'Operating System: Linux\n'
                      'Computer Networks',*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }

  Widget SubHeadingTitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: const Color.fromARGB(255, 13, 93, 158),
      ),
    );
  }

  Widget HeadingTitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: const Color.fromARGB(255, 13, 93, 158),
      ),
    );
  }

  Widget sectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
    );
  }
}

Widget roWIconText(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, color: const Color.fromARGB(255, 13, 93, 158)),
      SizedBox(width: 10),
      Text(text, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    ],
  );
}
