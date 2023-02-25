import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeSilverAppBar extends StatelessWidget {
  const CustomeSilverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Image.asset('assets/youtube_dark.png')),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 30,
          icon: CircleAvatar(
            foregroundImage: NetworkImage(
                'https://yt3.ggpht.com/yti/AHXOFjUgy1kzLaMyr45VTWCmDvEw-wluzDInyIb1iqhU=s88-c-k-c0x00ffffff-no-rj-mo'),
          ),
        )
      ],
    );
  }
}
