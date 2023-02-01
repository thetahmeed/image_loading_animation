<!--
    Developer: Md. Tahmeedul Islam
    From: Dhaka, Bangladesh
    GitHub: https://github.com/thetahmeed/
    Website: https://tahmeedul.com/
-->

This is a simple simple ppackage to use image as a custom loading animation

## Features

You can use any asset image or network image to create a custom loading animation.

## Getting started

1. Import the package
2. Call ```ImageLoadingAnimation()```
3. Pass any image through ```assetImage``` or ```networkImage```;
4. If you want to use use ```networkImage``` don't forget to pass ```usingNetworkImage``` as ```true```

## Usage
```
ImageLoadingAnimation(
      assetImage: 'assets/download.png',
)
```

## Additional information
Optional parameters that you can use as well
```
  Color? backgroundColor,
  String? networkImage,
  bool? usingNetworkImage,
  double? imageWidth,
  double? imageHeight,
  Duration? animationDuration,
  bool? reverseAnimation,
  double? containerWidth,
```

## Contribute
You are invited to do any awesome chnages
GitHub repo link: https://github.com/thetahmeed/image_loading_animation


// custom_loading_animation a child of ```Tahmeed's Lab```