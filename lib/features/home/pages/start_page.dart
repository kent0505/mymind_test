import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/buttons/cuper_button.dart';
import '../../../core/widgets/others/loading_widget.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool start = false;

  void load() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        start = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff43BCF0),
                  Color(0xff541896),
                  Color(0xff711280),
                ],
              ),
            ),
          ),
          if (start) ...[
            Center(
              child: SvgPicture.asset('assets/logo2.svg'),
            ),
            Positioned(
              bottom: 90,
              left: 0,
              right: 0,
              child: CuperButton(
                onPressed: () {
                  context.go('/level');
                },
                minSize: 40,
                child: SvgPicture.asset('assets/start.svg'),
              ),
            ),
          ] else
            const LoadingWidget(),
        ],
      ),
    );
  }
}
