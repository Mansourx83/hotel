import 'package:flutter/material.dart';

class DetailOfHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar with back arrow
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Row(
          children: [
            SizedBox(
              width: 90,
            ),
            Text(
              'Detail',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 90,
            ),
            Icon(Icons.more_horiz_outlined)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 18, 24, 0),
        child: Column(
          children: [
            Image.asset('assets/images/Imagez.png'),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.wifi),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Free Wifi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.coffee),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Free Breakfast',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  '5.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  'The Aston Vill Hotel',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  r'$200,7',
                  style: TextStyle(
                      color: Color(0xff4C4DDC), fontWeight: FontWeight.bold),
                ),
                Text(
                  '/night',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Image.asset('assets/images/location.png'),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Alice Springs NT 0870, Australia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, Read more ...',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 240),
              child: Text(
                'Preview',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Image.asset('assets/images/Image1.png'),
                const SizedBox(
                  width: 8,
                ),
                Image.asset('assets/images/Image2.png'),
                const SizedBox(
                  width: 8,
                ),
                Image.asset('assets/images/Image3.png'),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 57),
                  backgroundColor: const Color(0xff4C4DDC),
                ),
                child: const Text(
                  'Booking Now',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
