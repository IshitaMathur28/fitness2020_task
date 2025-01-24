import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'utils/constants.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late WebViewXController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Screen"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: WebViewX(
          initialContent: 'https://www.youtube.com/embed/${Constants.youtubeVideoId}?controls=0',
          initialSourceType: SourceType.url,
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.8,
          onWebViewCreated: (controller) => _webViewController = controller,
        ),
      ),
    );
  }
}
