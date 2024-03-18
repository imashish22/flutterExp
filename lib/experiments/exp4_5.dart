import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Experiment4And5 extends StatelessWidget {
  final List<String> iconNames;

  const Experiment4And5({Key? key, required this.iconNames}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff100ff),
              Color(0xffdf00ff),
              Color(0xffcc00ff),
              Color(0xffb700ff),
              Color(0xffa100ff)
            ], // Add your gradient colors here
          ),
        ),
        padding: const EdgeInsets.all(50),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: iconNames.map((iconName) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          _getIconData(iconName),
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          _getLabelText(iconName),
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white, // Color of the bottom border
                    thickness: 1, // Thickness of the border
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'buddhist':
        return Icons.temple_buddhist;
      case 'search':
        return Icons.youtube_searched_for;
      case 'temple':
        return Icons.temple_hindu_sharp;
      case 'mosque':
        return Icons.mosque;
      case 'church':
        return Icons.church;
      default:
        return Icons.error;
    }
  }

  String _getLabelText(String iconName) {
    switch (iconName) {
      case 'buddhist':
        return 'Buddhist';
      case 'search':
        return 'Search';
      case 'temple':
        return 'Temple';
      case 'mosque':
        return 'Mosque';
      case 'church':
        return 'Church';
      default:
        return 'Unknown';
    }
  }
}
