import 'package:cruv_task_1/models/homepage_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.title});
  // ignore: prefer_typing_uninitialized_variables
  final title;
  final HomePage homePage = HomePage();

  double total() {
    double total = 0.0;
    for (var element in HomePage().prices.values) {
      total = total + element;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                  fixedSize: const Size.fromRadius(16),
                  padding: EdgeInsets.zero, // Remove default padding
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the Row takes only the minimum required width
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                      ),
                      onPressed:
                          null, // Since this IconButton is inside an OutlinedButton, onPressed must be null or omitted
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    homePage.senderName.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 14,
                          letterSpacing: 2,
                        ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    homePage.senderAddress,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              )
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 0, 87, 255)),
                                child: Text(
                                  homePage.itemCount.toString().padLeft(2, '0'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 30,
                                      ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '${homePage.itemCount.toString().padLeft(2, '0')} items',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Change',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: Colors.grey,
                                        ),
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i <= 8; i++)
                                        Row(
                                          children: [
                                            Container(
                                              height: 1,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromARGB(
                                                      148, 158, 158, 158),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(1),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 1,
                                            )
                                          ],
                                        ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '\u20B9${homePage.prices['itemTotal']!.toStringAsFixed(0)}',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontSize: 12,
                                ),
                          ),
                        ]),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'DELIVERY FEE',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 14,
                              letterSpacing: 2,
                            ),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homePage.address,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Change',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                fontSize: 12,
                                color: const Color.fromARGB(255, 58, 56, 56),
                              ),
                        ),
                        Row(
                          children: [
                            for (int i = 0; i <= 9; i++)
                              Row(
                                children: [
                                  Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            148, 158, 158, 158),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  )
                                ],
                              ),
                          ],
                        )
                      ],
                    ),
                    trailing: Text(
                      '\u20B9${homePage.prices['deliveryFee']!.toStringAsFixed(0)}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12,
                          ),
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'TAXES AND CHARGES',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 14,
                              letterSpacing: 2,
                            ),
                      ),
                    ),
                    subtitle: Text(
                      'Some info about taxes and service charges for transparency',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                    trailing: Text(
                      '\u20B9${homePage.prices['taxesAndCharges']!.toStringAsFixed(0)}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12,
                          ),
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    'TO PAY',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 14,
                          letterSpacing: 2,
                        ),
                  ),
                  trailing: Text(
                    '\u20B9${total().toStringAsFixed(0)}',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
          Stack(children: [
            Image.asset(
              'assets/images/mask_group.png',
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'ESTIMATE DELIVERY TIME',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 10,
                          letterSpacing: 2,
                        ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '25 Mins',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Container(
                    height: 37,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 0, 87, 255)
                                .withOpacity(0.9),
                            spreadRadius: 2,
                            blurRadius: 3,
                          ),
                        ],
                        color: const Color.fromARGB(255, 0, 87, 255),
                        borderRadius: BorderRadius.circular(86.0),
                        border: Border.all(color: Colors.transparent)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'PROCEED TO PAY',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 10,
                                  letterSpacing: 2),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 25,
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 0, 87, 255),
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
