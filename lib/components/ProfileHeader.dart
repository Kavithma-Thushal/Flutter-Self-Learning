import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Image.asset(
          'assets/images/cover_pic.jpg',
          width: width,
          height: 100,
          fit: BoxFit.cover,
        ),
        Container(
          transform: Matrix4.translationValues(0.0, -45.0, 0.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile_pic.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            decoration: const BoxDecoration(
              color: Color(0xFF00A400),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: const Text(
              '#OPENTOWORK',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Kavithma Thushal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Full Stack Engineer | Web Developer',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF666666),
                ),
              ),
              Text(
                'Galle District, Southern Province, Sri Lanka',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF888888),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              StatWidget(statNumber: '3,228', statLabel: 'Followers'),
              StatWidget(statNumber: '500+', statLabel: 'Connections'),
              StatWidget(statNumber: '253', statLabel: 'Profile Views'),
            ],
          ),
        ),
      ],
    );
  }
}

class StatWidget extends StatelessWidget {
  final String statNumber;
  final String statLabel;

  const StatWidget({
    super.key,
    required this.statNumber,
    required this.statLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          statNumber,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0073B1),
          ),
        ),
        Text(
          statLabel,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF666666),
          ),
        ),
      ],
    );
  }
}
