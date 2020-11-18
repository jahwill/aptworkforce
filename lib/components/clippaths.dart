///this clip is a customised path add to your list of clip design
//
//class TopContainerClip extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = new Path();
//    path.lineTo(0, size.height * 0.4);
//    path.quadraticBezierTo(size.width * 0.15, 65, size.width * 0.3, 130);
//    path.quadraticBezierTo(
//        size.width * 0.44, size.height - 2, size.width * 0.63, 130);
//    path.quadraticBezierTo(size.width * 0.236, 85, size.width, 70);
//    ;
//    path.lineTo(size.width, size.height * 0.66);
//    path.lineTo(size.width, 0);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//}

//class TopContainerClip extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = new Path();
//    path.lineTo(0, size.height);
//    path.quadraticBezierTo(size.width * 0.15, 65, size.width * 0.3, 140);
//    path.quadraticBezierTo(
//        size.width * 0.44, size.height - 5, size.width * 0.63, 130);
//    path.quadraticBezierTo(
//        size.width - (size.width * 0.236), 90, size.width, 80);
//
//    path.lineTo(size.width, size.height * 0.66);
//    path.lineTo(size.width, 0);
//    path.close();
//    return path;
//  }

//this clip is for a top wave curve over a container
//class BottomContainerClip extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = new Path();
//    var sw = size.width;
//    var sh = size.height;
//    path.moveTo(0, 65.0);
////    path.lineTo(size.width, size.height);
////    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
//    path.quadraticBezierTo(size.width * 0.24, 0, size.width * 0.27, 80);
//    path.quadraticBezierTo(size.width * 0.3, sh - 90, size.width * 0.6, 60);
//    path.quadraticBezierTo(size.width * 0.7, 20, size.width, 20);
//
//    path.lineTo(sw, sh);
//    path.lineTo(0, sh);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//}

/////this clip is for a bottom curve container like a 45 degree rotated
// container
//class TopContainerClip extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = new Path();
//    path.lineTo(0, size.height * 0.7);
//    path.quadraticBezierTo(size.width * 0.16, size.height - 20,
//        size.width * 0.14, size.height - 25);
//    path.quadraticBezierTo(
//        size.width * 0.25, size.height, size.width * 0.35, size.height - 16);
//    path.lineTo(size.width, size.height * 0.5);
//    path.lineTo(size.width, 0);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    // TODO: implement shouldReclip
//    return false;
//  }
//}
