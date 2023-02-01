library image_loading_animation;

import 'package:flutter/material.dart';

class ImageLoadingAnimation extends StatefulWidget {
  const ImageLoadingAnimation({
    super.key,
    this.assetImage,
    this.backgroundColor,
    this.networkImage,
    this.usingNetworkImage,
    this.imageWidth,
    this.imageHeight,
    this.animationDuration,
    this.reverseAnimation,
    this.containerWidth,
    this.containerHeight,
    this.containerShape,
  });

  final String? assetImage;
  final String? networkImage;
  final Color? backgroundColor;
  final bool? usingNetworkImage;
  final double? imageWidth;
  final double? imageHeight;
  final double? containerWidth;
  final double? containerHeight;
  final Duration? animationDuration;
  final bool? reverseAnimation;
  final BoxShape? containerShape;

  @override
  State<ImageLoadingAnimation> createState() => _ImageLoadingAnimationState();
}

class _ImageLoadingAnimationState extends State<ImageLoadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration ?? const Duration(seconds: 1),
    );
    _animationController.repeat(reverse: widget.reverseAnimation ?? true);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animationController,
        child: Container(
          alignment: Alignment.center,
          height: widget.containerHeight ?? 55,
          width: widget.containerWidth ?? 55,
          decoration: BoxDecoration(
            shape: widget.containerShape ?? BoxShape.circle,
            color: widget.backgroundColor ?? Colors.black.withAlpha(100),
          ),
          child: widget.usingNetworkImage ?? false
              ? Image.asset(
                  widget.assetImage ?? 'assets/download.png',
                  height: widget.imageHeight ?? 35,
                  width: widget.imageWidth ?? 35,
                )
              : Image.network(
                  widget.networkImage ?? 'https://picsum.photos/354/354',
                  height: widget.imageHeight ?? 35,
                  width: widget.imageWidth ?? 35,
                ),
        ),
      ),
    );
  }
}
