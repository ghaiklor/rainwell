import 'package:flutter/cupertino.dart';

class TypewriterText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle style;
  final TextAlign align;
  final VoidCallback? onComplete;

  const TypewriterText({
    super.key,
    required this.text,
    this.duration = const Duration(seconds: 10),
    this.style = const TextStyle(
      fontFamily: 'American Typewriter',
      height: 1.5,
      letterSpacing: 1.5,
      fontSize: 20,
    ),
    this.align = TextAlign.start,
    this.onComplete,
  });

  @override
  State<TypewriterText> createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _charactersToShow;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);
    _charactersToShow = StepTween(
      begin: 0,
      end: widget.text.length,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward().then((_) => widget.onComplete?.call());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0,
          child: Text(
            widget.text,
            style: widget.style,
            textAlign: widget.align,
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) => Text(
            widget.text.substring(0, _charactersToShow.value),
            style: widget.style,
            textAlign: widget.align,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
