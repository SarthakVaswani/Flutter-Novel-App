import 'package:flutter/material.dart';

class LineartGradientMask extends StatelessWidget {
  LineartGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0, 0.5, 1],
        colors: [Color(0xFF7F7FD5), Color(0xFF86A8E7), Color(0xFF91EAE4)],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}

// class CustomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       height: 48.0,
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               height: 50,
//               decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(10),
//                       bottomLeft: Radius.circular(10))),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   LineartGradientMask(
//                     child: Icon(
//                       Icons.favorite,
//                       size: 50,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

BoxDecoration bgGradient() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          tileMode: TileMode.mirror,
          colors: [Color(0xE0EAFC), Color(0xCFDEF3)]));
}

class FavButton extends StatefulWidget {
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool _isFav = false;
  void _toggleFav() {
    setState(() {
      if (_isFav) {
        _isFav = false;
      } else {
        _isFav = true;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: IconButton(
            icon: (_isFav
                ? Icon(
                    Icons.favorite,
                    size: 40,
                  )
                : Icon(
                    Icons.favorite_border,
                    size: 40,
                  )),
            color: Colors.red,
            onPressed: () {
              _toggleFav();
            }),
      ),
    );
  }
}
