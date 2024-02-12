import 'package:flutter/material.dart';
import 'package:invest_app/fixtures.dart';

class BankAccountInfoScreen extends StatelessWidget {
  const BankAccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          "Bank Account info",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 16,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 111,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.02,
                      ),
                      offset: const Offset(
                        0,
                        4,
                      ),
                      spreadRadius: 4,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 47,
                        width: 47,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          child: Image.network(
                            Fixtures()
                                .bankAccountInfoItems[index]['imageUrl']
                                .toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Fixtures()
                                  .bankAccountInfoItems[index]['details']
                                  .toString(),
                              style: const TextStyle(
                                color: Color(
                                  0xff555555,
                                ),
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              Fixtures()
                                  .bankAccountInfoItems[index]['name']
                                  .toString(),
                              style: const TextStyle(
                                color: Color(
                                  0xff333333,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: const EdgeInsets.only(
                              top: 6,
                            ),
                            child: PopupMenuButton(
                              onSelected: (value) {
                                // your logic
                              },
                              itemBuilder: (BuildContext bc) {
                                return const [
                                  PopupMenuItem(
                                    value: '/hello',
                                    child: Text("Some"),
                                  ),
                                  PopupMenuItem(
                                    value: '/about',
                                    child: Text("Dummy"),
                                  ),
                                  PopupMenuItem(
                                    value: '/contact',
                                    child: Text("Options"),
                                  )
                                ];
                              },
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 28,
              );
            },
            itemCount: Fixtures().bankAccountInfoItems.length,
          ),
        ),
      ),
    );
  }
}
