import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Image.asset('assets/icons/profile/logo@2x.png', scale: 2),
              const SizedBox(width: 16),
              const Expanded(
                child: Text('Profile', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              IconButton(
                iconSize: 28,
                icon: Image.asset('assets/icons/tabbar/light/more_circle@2x.png', scale: 2),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.13),
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/profile/user_image.png"))),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Image.asset('assets/icons/profile/edit_square@2x.png', scale: 2),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Text('User', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        const SizedBox(height: 8),
        const Text('99 300 00 00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 20),
        Container(
          color: const Color(0xFFEEEEEE),
          height: 1,
          padding: const EdgeInsets.symmetric(horizontal: 24),
        )
      ],
    );
  }
}
