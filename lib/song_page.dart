import 'package:flutter/material.dart';
import 'package:music_player/new_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPageScreen extends StatelessWidget {
  const SongPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                //menu button and back button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text('P L A L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // cover aert,artist name,song name
                NewBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/music_pic.webp',
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kota The Friend',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Birdie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                //start time,shuffle button,repeat button,end time

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4:22')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                //linear bar
                NewBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //previous song, pause play, skip next song
                SizedBox(
                  height: 10,
                  child: Row(
                    children: const [
                      Expanded(
                        child: NewBox(
                          child: Icon(Icons.skip_previous,size: 32,),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: NewBox(
                              child: Icon(Icons.play_arrow,size: 32,),
                            ),
                          )),
                      Expanded(
                        child: NewBox(
                          child: Icon(Icons.skip_next,size: 32,),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
