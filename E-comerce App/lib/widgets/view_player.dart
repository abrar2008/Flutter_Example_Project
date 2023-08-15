import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:hazrin/widgets/loader.dart';
import 'package:video_player/video_player.dart';

class ViewPlayer extends StatefulWidget {
  const ViewPlayer({Key? key}) : super(key: key);

  @override
  _ViewPlayerState createState() => _ViewPlayerState();
}

class _ViewPlayerState extends State<ViewPlayer> {

  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;



  initializeChewiePlayer(int index) async{
    videoPlayerController = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    );
    await videoPlayerController.initialize();
    setChewieController();
  }

  setChewieController(){
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    setState(() {

    });
  }

  @override
  void initState() {
    initializeChewiePlayer(0);
    super.initState();
  }

  @override
  void dispose() {
    chewieController!.dispose();
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //if(chewieController != null)
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: chewieController !=null ?
            Chewie(
                controller: chewieController!,
            ):Loader(),
      ),
    );
  }
}
