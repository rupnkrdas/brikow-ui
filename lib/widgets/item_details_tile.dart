import 'package:flutter/material.dart';

class ItemDetailTile extends StatelessWidget {
  const ItemDetailTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          // item name
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Item Name",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),

          // rate/unit
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Rate/Unit",
                border: InputBorder.none,
              ),
            ),
          ),

          SizedBox(
            width: 16,
          ),

          // unit
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Unit",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
