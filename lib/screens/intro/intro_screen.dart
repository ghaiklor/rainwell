import 'package:flutter/cupertino.dart';
import 'package:rainwell/screens/intro/typewriter_text.dart';

const String introText =
    'Kyiv...\n'
    'Year unknown.\n'
    'Dust and ash remain.\n'
    'You wake up under the rubble.\n'
    'Your throat burns for water.';

const TextStyle introTextStyle = TextStyle(
  fontFamily: 'American Typewriter',
  height: 1.5,
  letterSpacing: 1.5,
  fontSize: 20,
);

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool _isGatherRaindropsButtonShowed = false;

  void _onIntroTextComplete() {
    Future.delayed(
      Duration(seconds: 2),
      () => setState(() => _isGatherRaindropsButtonShowed = true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2a2520), Color(0xFF1a1510), Color(0xFF0a0805)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TypewriterText(
                text: introText,
                style: introTextStyle.merge(
                  TextStyle(color: Color(0xFFc4b5a0)),
                ),
                onComplete: _onIntroTextComplete,
              ),
              SizedBox(height: 40),
              AnimatedOpacity(
                opacity: _isGatherRaindropsButtonShowed ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                child: CupertinoButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, _, _) => IntroScreen(),
                      transitionsBuilder: (_, animation, _, child) =>
                          FadeTransition(opacity: animation, child: child),
                      transitionDuration: Duration(seconds: 2),
                    ),
                  ),
                  child: Text('Gather raindrops', style: introTextStyle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
