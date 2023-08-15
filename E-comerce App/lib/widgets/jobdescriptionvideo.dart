import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/widgets/loader.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:path_provider/path_provider.dart';


class JobDescriptionVideos extends StatefulWidget {
  final String? url;
  const JobDescriptionVideos({Key? key,this.url}) : super(key: key);

  @override
  _JobDescriptionVideosState createState() => _JobDescriptionVideosState();
}

class _JobDescriptionVideosState extends State<JobDescriptionVideos> {
  var fileName;
  Uint8List uint8list = Uint8List(0);
  var filepath;
  @override
  void initState() {
    getThumbnailFromNetwork();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(3.i)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if(uint8list.isEmpty) Loader(),
          if(uint8list.isNotEmpty) ClipRRect(
            borderRadius: BorderRadius.circular(3.i),
            child: Image.memory(uint8list,
              height: 10.0.h,
              width: 20.0.w,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorUtils.greenColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(ImageUtils.videoPlayerIcon,
                  height: 4.i,
                  width: 4.i,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getThumbnailFromNetwork() async{
    filepath = await  VideoThumbnail.thumbnailData(
      video: "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
        imageFormat: ImageFormat.WEBP,
        maxHeight: 64, // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
        quality: 75,
    );
    uint8list = filepath;
    setState(() {
    });
  }
}
