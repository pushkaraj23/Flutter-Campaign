import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_diary/components/note.dart';
import 'package:my_diary/pages/page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final swidth = MediaQuery.sizeOf(context).width / 100;
    final sheight = MediaQuery.sizeOf(context).height / 100;

    return Scaffold(
      body: Container(
        width: swidth * 100,
        height: sheight * 100,
        color: const Color(0xffDFD3C8),
        child: Stack(
          children: [
            Positioned(
              top: sheight * 7,
              left: swidth * 10,
              child: SizedBox(
                  height: sheight * 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: swidth * 80,
                        height: 2,
                        color: const Color(0xff464646),
                      ),
                      SizedBox(height: sheight * 1.5),
                      Text(
                        " My Diary",
                        style: GoogleFonts.raleway(
                            color: const Color(0xff464646),
                            fontSize: sheight * 4,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: sheight * 1.5),
                      Container(
                        width: swidth * 80,
                        height: 1,
                        color: const Color(0xff464646),
                      ),
                      SizedBox(height: sheight * 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                     const NotePage(title: "", content: "")));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: swidth*2),
                            SizedBox(
                                height: sheight * 4,
                                child: Image.asset("assets/add.png")),
                            Text(
                              " new",
                              style: GoogleFonts.raleway(
                                color: const Color(0xffDF5953),
                                fontSize: sheight * 3,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Positioned(
                right: 0,
                top: sheight * 4,
                child: SizedBox(
                  height: sheight * 40,
                  child: Image.asset("assets/img3.png"),
                )),
            Positioned(
              bottom: 0,
              left: swidth * 10,
              child: Container(
                width: swidth * 80,
                height: sheight * 71,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => GestureDetector(
                      child: Note(
                        title: 'Note ${index + 1}',
                        note: "Welcome to GDSC Flutter Campaign :)",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotePage(
                                    title: 'Note ${index + 1}',
                                    content:
                                        "Welcome to GDSC Flutter Campaign :)")));
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
