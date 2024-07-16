import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/video-slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
              icon:Image.asset('assets/images/filimo_150.png',width: 23,),label: 'ویترین',),
          const BottomNavigationBarItem(
              icon: Icon(Icons.menu), label: 'دسته بندی ها'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.video_call_rounded), label: 'اکانت من'),
        ],
        currentIndex: 0,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange,
        onTap: (index){

        },

      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            title: Row(
              children:[
                Image.asset('assets/images/filimo.png'),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(Icons.person,size: 23,color: Colors.orangeAccent,),
                ),
                const SizedBox(width: 10,),
                const Icon(Icons.search_rounded),
                const SizedBox(width: 10,),
                const Icon(Icons.filter_list_rounded),
              ],
            ),
            flexibleSpace: const FlexibleSpaceBar(
              background: VideoSlider(),
            ),
          ),
        ],
      ),
    );
  }
}
