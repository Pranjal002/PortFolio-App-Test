import 'package:flutter/material.dart';
import 'package:testproject/Domain/Model/project.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late Animation<Color?> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    animation = Tween(begin: Colors.orangeAccent, end: Colors.blue).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  final List<Project> _projects = [
    Project(
      name: 'Cryptography and Steganography',
      description: 'A Python project',
      link: 'www.github.com/pranjal002',
    ),
    Project(
      name: 'Cryptography and Steganography',
      description: 'A Python project',
      link: 'www.github.com/pranjal002',
    ),
    Project(
      name: 'Cryptography and Steganography',
      description: 'A Python project',
      link: 'www.github.com/pranjal002',
    ),
    Project(
      name: 'Cryptography and Steganography',
      description: 'A Python project',
      link: 'www.github.com/pranjal002',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView.builder(
            itemCount: _projects.length,
            itemBuilder: (context, index) {
              Project project = _projects[index];
              return Container(
                child: Card(
                  color: animation.value ?? Colors.transparent,
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: Icon(
                      Icons.code,
                      size: 36,
                      color: Colors.blue,
                    ),
                    title: Text(
                      project.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      project.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Handle onTap action here
                      print('Clicked on ${project.name}');
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
