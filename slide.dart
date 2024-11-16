import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Slide Animation Example',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: SlideAnimationWidget(),
);
}
}
class SlideAnimationWidget extends StatefulWidget {
@override
_SlideAnimationWidgetState createState() => _SlideAnimationWidgetState();
}
class _SlideAnimationWidgetState extends State<SlideAnimationWidget>
with SingleTickerProviderStateMixin {
late AnimationController _animationController;
late Animation<Offset> _slideAnimation;
@override
void initState() {
super.initState();
_animationController = AnimationController(
vsync: this,
duration: Duration(seconds: 2),
);
_slideAnimation = Tween<Offset>(
begin: Offset(-1.0, 0.0),
end: Offset(0.0, 0.0),
).animate(
CurvedAnimation(
parent: _animationController,
curve: Curves.easeInOut,
),
);
_animationController.forward();
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Slide Animation Example'),
),
body: SlideTransition(
position: _slideAnimation,
child: Container(
width: 200,
height: 200,
color: Colors.blue,
child: Center(
child: Text(
'Slide Animation',
style: TextStyle(
color: Colors.white,
fontSize: 20,
),
),
),
),
),
);
}
void dispose() {
_animationController.dispose();
super.dispose();
}
}