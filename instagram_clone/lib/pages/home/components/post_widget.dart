import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: isDesktop ? 35 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(avatarImage),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(avatarImage),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.messenger_outline),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Liked by John Doe and others',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '2 hours ago',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (isDesktop) ...[
            Divider(
              color: Colors.white,
              height: 1,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adicione um comentário...',
                        hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Publish'),
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
