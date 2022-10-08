import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/screens/ticket_view.dart';
import 'package:ticket_book/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        onTap: () {
                          print('tap');
                        },
                        child: Text(
                          'View all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Gap(15),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    TicketView(),
                    TicketView(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
