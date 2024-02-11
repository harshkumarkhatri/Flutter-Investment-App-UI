import 'package:flutter/material.dart';
import 'package:invest_app/fixtures.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 28,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Notification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 28,
                    );
                  },
                  itemBuilder: (context, index) {
                    final notificationItems = Fixtures().notificationItems;
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  notificationItems[index]['imageUrl']
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  notificationItems[index]['time'].toString(),
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    height: 0.9,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 56.0),
                                child: Text(
                                  notificationItems[index]['desc'].toString(),
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  shrinkWrap: true,
                  itemCount: Fixtures().notificationItems.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
