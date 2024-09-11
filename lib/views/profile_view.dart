import 'package:flutter/material.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/views/about_app_view.dart';
import 'package:iti_project/views/about_developer_view.dart';
import 'package:iti_project/widgets/custom_list_tile_widget.dart';

// ignore: must_be_immutable
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool issucret = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kprimarycolor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            'My Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                        'assets/images/LMC20240822_145341_lmc_8.4.jpg'),
                  ),
                   const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Mossad AbdElAaal',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Card(
                    child: ListTile(
                      tileColor: Colors.white24,
                      iconColor: Colors.indigoAccent,
                      leading: Icon(
                        Icons.email,
                        size: 30,
                      ),
                      title: Text(
                        'mossadbdalal317@gmail.com',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  // Card(
                  //   child: ListTile(
                  //     tileColor: Colors.white24,
                  //     iconColor: Colors.blueGrey,
                  //     leading: const Icon(
                  //       Icons.password,
                  //       size: 30,
                  //     ),
                  //     title: Text(
                  //       issucret == true ? 'mosasdf@fsdv' : '***********',
                  //       style: const TextStyle(color: Colors.black),
                  //     ),
                  //     trailing: GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           issucret = !issucret;
                  //         });
                  //       },
                  //       child: Icon(
                  //         issucret == true
                  //             ? Icons.visibility
                  //             : Icons.visibility_off,
                  //         size: 30,
                  //         color: Colors.blueGrey,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 40,
                  ),
                  Customlisttile(
                    iconleading: const Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    texttitle: 'Settings',
                    color: Colors.blue,
                    icontraling: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Customlisttile(
                    iconleading: const Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                    texttitle: 'Favorites',
                    color: Colors.blue,
                    icontraling: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AboutAppView();
                      }));
                    },
                    child: Customlisttile(
                      iconleading: const Icon(Icons.info, size: 30),
                      texttitle: 'About App',
                      color: Colors.blue,
                      icontraling: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AboutDeveloperView();
                      }));
                    },
                    child: Customlisttile(
                      iconleading: const Icon(Icons.info, size: 30),
                      texttitle: 'About Developer',
                      color: Colors.blue,
                      icontraling: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
