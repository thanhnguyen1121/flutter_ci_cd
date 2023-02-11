import 'dart:developer' as developer;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_ci_cd/demo/widgets/search_widget.dart';

class DemoPage extends StatefulWidget {
  static const routeName = 'DemoPage';

  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  static const tag = 'DemoPage';

  final ScrollController _controller = ScrollController();
  final double minHeight = 120;
  final double maxHeight = 200;
  double _height = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _height = _controller.offset;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(microseconds: 600),
              width: double.infinity,
              color: Colors.red,
              curve: Curves.easeIn,
              height: minHeight +
                  (maxHeight - minHeight) *
                      (1.0 - min(1, _height / (maxHeight - minHeight))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  SearchWidget(
                    height: _height,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                controller: _controller,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(12)),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
