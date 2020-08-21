import 'package:flutter/material.dart';
import 'package:video_controller/src/video_controller_delegate.dart';

class VideoController extends StatelessWidget {
  static VideoControllerDelegate of(BuildContext context) {
    return (context.findAncestorWidgetOfExactType<VideoController>()).delegate;
  }

  const VideoController({
    Key key,
    @required this.delegate,
  }) : super(key: key);

  final VideoControllerDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[],
    );
  }
}

class _GestureDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (detail) {
        if (detail.primaryDelta > 0) {
          _handleFastForward(context);
        } else if (detail.primaryDelta < 0) {
          _handleFastFBackward(context);
        }
      },
    );
  }

  void _handleFastForward(BuildContext context) {}

  void _handleFastFBackward(BuildContext context) {}
}
