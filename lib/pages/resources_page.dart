import 'package:flutter/cupertino.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          child: Center(child: Text('Resources Page')),
        );
      },
    );
  }
}
