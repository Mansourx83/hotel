import 'package:flutter/material.dart';
import 'package:hotel/Custom%20Widget/hotels.dart';

import 'detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      const Text(
                        'Current location                       ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(183, 158, 158, 158),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/location.png'),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            'Wallace, Australia',
                            style: TextStyle(fontSize: 14),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff4C4DDC),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    child: Container(
                      color: Color.fromARGB(12, 158, 158, 158),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Hotel ',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(111, 144, 152, 177),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  suffixIcon: Image.asset('assets/images/Icon.png'),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  const Text(
                    'Nearby your location',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Color(0xff4C4DDC)),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailOfHotel();
                            },
                          ),
                        );
                      },
                      child: Hotels(
                        pic: 'assets/images/image 3.png',
                        name: 'The Aston hotel',
                        location: 'Alice Springs NT 0870, Australia',
                        price: r'$165.3',
                        evaluation: '5.0',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Hotels(
                      pic: 'assets/images/1.jpg',
                      name: 'The Londan hotel',
                      location: 'Alice Springs NT 0870, Australia',
                      price: r'$187.9',
                      evaluation: '4.9',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Hotels(
                      pic: 'assets/images/2.jpg',
                      name: 'The Madrid hotel',
                      location: 'Alice Springs NT 0870, Australia',
                      price: r'$224.0',
                      evaluation: '4.8',
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  const Text(
                    'Popular Destination',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Color(0xff4C4DDC)),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset('assets/images/Image.png')),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Asteria hotel',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            r'$165,3',
                            style: TextStyle(
                              color: Color(0xff4C4DDC),
                            ),
                          ),
                          Text(
                            '/night',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Wilora NT 0872, Australia',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
