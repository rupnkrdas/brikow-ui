// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FuctionTile extends StatelessWidget {
  final void Function() onTap;
  final String functionName;
  const FuctionTile({
    Key? key,
    required this.onTap,
    required this.functionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: 280,
          height: 50,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.deepOrange[50],
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  color: Colors.grey.shade400,
                  blurRadius: 4,
                )
              ]),
          child: Center(
            child: Text(
              functionName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
