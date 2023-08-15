import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:stacked/stacked.dart';

class ViewZoomedImage extends StatefulWidget {
  final int? index;
  const ViewZoomedImage({Key? key, this.index}) : super(key: key);

  @override
  _ViewZoomedImageState createState() => _ViewZoomedImageState();
}

class _ViewZoomedImageState extends State<ViewZoomedImage> {
  PageController pageController = PageController();
  List descriptionImages = [
    ImageUtils.plumber,
    ImageUtils.electrician,
    ImageUtils.plumbingExpert,
    ImageUtils.plumbingFixing,
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Center(
              child: Container(
                width: double.infinity,
                child: PhotoViewGallery.builder(
                  itemCount: descriptionImages.length,
                  pageController: pageController,
                  builder: (context, index) {
                    return  PhotoViewGalleryPageOptions(
                      imageProvider: AssetImage(descriptionImages[index]),
                      initialScale: PhotoViewComputedScale.contained * 1,
                      //heroAttributes: PhotoViewHeroAttributes(tag: galleryItems[index].id),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => locator<MainViewModel>(),
      onModelReady: (model){
        Future.delayed(Duration(milliseconds: 100)).then((value)async{pageController.jumpToPage(widget.index!);
        });
      },
      disposeViewModel: false,
    );
  }
}
