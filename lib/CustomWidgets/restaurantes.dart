import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget container(List<Map<String, String>> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
        child: Text(
          "Famosos no Ifood",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      SizedBox(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            var item = items[index];
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(item['img']!),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item['text']!,
                      textAlign: TextAlign.center,
                      style:
                        GoogleFonts.nunitoSans(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}