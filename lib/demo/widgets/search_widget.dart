import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final double height;

  const SearchWidget({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          child: const Icon(
            Icons.search,
            size: 24,
            color: Colors.white,
          ),
        ),

        Flexible(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: height >= 80 ? 0 : MediaQuery.of(context).size.width,
            child: SizedBox(
              height: 48,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: TextField(
                  style: const TextStyle(height: 1.0, color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 1)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 1))),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
