
import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';
class CustomAd extends StatelessWidget {
  const CustomAd({
    super.key, 
    required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.sizeOf(context).height * 1 / 4.7,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kPrmiaryColor,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.5 / 6),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: kSecondaryColor,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'IPhone 14',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'limited number',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Center(
                          child: Text(
                        'Buy now!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Image.asset(
        image,
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height * 1 / 4.25,
          width: MediaQuery.sizeOf(context).width * 0.6,
        ),
      ],
    );
  }
}
