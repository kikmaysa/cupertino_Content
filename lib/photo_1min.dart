// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';

class Photoonemin extends StatelessWidget {
  final List<String> imageAssetPaths = [
    'assets/images/1minSyntax.jpg',
    'assets/images/1minSaas.jpg',
    'assets/images/1minSA.jpg',
    'assets/images/1minMalware.jpg',
    'assets/images/1minBug.jpg',
    'assets/images/1minPegasus.jpg',
    // Add more asset paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('1 Min Read'),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildGridItem(context, imageAssetPaths[index], index);
              },
              childCount: imageAssetPaths.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String assetPath, int index) {
    return GestureDetector(
      onTap: () {
        _navigateToImageDetail(context, assetPath, index);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(assetPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _navigateToImageDetail(BuildContext context, String assetPath, int index) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) => ImageDetailPage(
          imageAssetPaths: imageAssetPaths,
          initialIndex: index,
        ),
      ),
    );
  }
}

class ImageDetailPage extends StatefulWidget {
  final List<String> imageAssetPaths;
  final int initialIndex;

  ImageDetailPage({
    Key? key,
    required this.imageAssetPaths,
    required this.initialIndex,
  }) : super(key: key);

  @override
  _ImageDetailPageState createState() => _ImageDetailPageState();
}

class _ImageDetailPageState extends State<ImageDetailPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Detail'),
      ),
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.imageAssetPaths.length,
        itemBuilder: (context, index) {
          return _buildImagePage(widget.imageAssetPaths[index]);
        },
      ),
    );
  }

  Widget _buildImagePage(String assetPath) {
    return Center(
     child: Center(
        child: Image.asset(assetPath),
      ),
    );
  }
}
