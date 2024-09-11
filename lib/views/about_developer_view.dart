import 'package:flutter/material.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/widgets/custom_list_tile_widget.dart';

class AboutDeveloperView extends StatelessWidget {
  const AboutDeveloperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kprimarycolor,
        centerTitle: true,
        title: const Text(
          'About Developer',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Summary',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    maxLines: 12,
                    'l am Mossad AbdElAal and Enthusiastic and driven fourth-year student at Damietta University with a passion for software development and a strong foundation in Flutter.Experienced Flutter developer with over one years of hands-on experience in building robust, scalable, and user-friendly mobile applications for both Android. Proficient in Dart and the Flutter framework, with a strong understanding of APIs, Firebase, and state management. Passionate about writing clean, efficient code and staying updated with the latest trends and best practices in mobile development.',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis, fontSize: 12,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.person_2,
                  size: 50,
                ),
                texttitle: 'Mossad AbdElAal mossad',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.email,
                  size: 50,
                ),
                texttitle: 'mossadbdalal317@gmail.com',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Phone',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.phone_android,
                  size: 50,
                ),
                texttitle: '01554981590',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.place,
                  size: 50,
                ),
                texttitle: 'Egypt/Dakahlia/mansoura',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Training in ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.model_training,
                  size: 50,
                ),
                texttitle: 'iti  mansoura branch',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Job',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.work,
                  size: 50,
                ),
                texttitle: 'Flutter developer',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'University ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.school_outlined,
                  size: 50,
                ),
                texttitle: 'Damietta University',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Faculty ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.computer,
                  size: 50,
                ),
                texttitle: 'Faculty of Computering and AI',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'GPA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Customlisttile(
                iconleading: const Icon(
                  Icons.score,
                  size: 50,
                ),
                texttitle: '3.21',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
