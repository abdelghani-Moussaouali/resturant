import 'package:flutter/material.dart';

class NotificationBar extends StatefulWidget {
  const NotificationBar({
    super.key,
  });

  @override
  State<NotificationBar> createState() => _NotificationBarState();
}

class _NotificationBarState extends State<NotificationBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(left: 8.0,bottom: 8.0),
            child: Text(
              'Notification',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          )),
          SliverFillRemaining(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 2.0,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    color: index.isEven
                        ? const Color.fromARGB(255, 173, 203, 255)
                        : Colors.white,
                    width: MediaQuery.sizeOf(context).width,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(75),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/example.webp',
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          const Expanded(
                            child: SizedBox(
                              height: 90,
                              child: Center(
                                child: Text(
                                  'Your order #12345 has been shipped! 🚚Estimated delivery: December 15, 2024.',
                                  maxLines: 3,
                                  style: TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
