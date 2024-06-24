import 'package:flutter/material.dart';
import 'package:machine_test_brainwired/model/details_model.dart';
import 'package:machine_test_brainwired/utils/colors.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
    required this.size,
    required this.details,
  });

  final Size size;
  final DetailsModel details;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: fifthColor,
          boxShadow: [
            BoxShadow(
                offset: const Offset(-0.5, -0.5),
                blurRadius: 5,
                spreadRadius: 1,
                color: Colors.grey.shade400)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${details.name}  (${details.username})",
                    style: const TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: primaryColor),
                  ),
                  Text(
                    '${details.email}',
                    style: const TextStyle(
                        letterSpacing: 1, color: Colors.black54),
                  ),
                  const Text(
                    'Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        color: primaryColor),
                  ),
                  Text(
                    '${details.address!.street}, ${details.address!.suite}, ${details.address!.city} ',
                    style: const TextStyle(
                        letterSpacing: 1, color: Colors.black54),
                  ),
                  Text(
                    'Zip code - ${details.address!.zipcode}',
                    style: const TextStyle(
                        letterSpacing: 1, color: Colors.black54),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Ph No - ',
                        style:
                            TextStyle(letterSpacing: 1, color: Colors.black54),
                      ),
                      SizedBox(
                          width: size.width * 0.39,
                          child: Text(
                            '${details.phone}',
                            style: const TextStyle(color: Colors.black54),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  const Text(
                    'Website',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: primaryColor),
                  ),
                  SizedBox(
                      width: size.width * 0.29,
                      child: Text(
                        '${details.website}',
                        style: const TextStyle(
                            letterSpacing: 1, color: Colors.black54),
                      )),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Company',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        color: primaryColor),
                  ),
                  SizedBox(
                      width: size.width * 0.3,
                      child: Text(
                        '${details.company!.name}',
                        style: const TextStyle(
                            letterSpacing: 1, color: Colors.black54),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Location',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: primaryColor),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lat - (${details.address!.geo!.lat})',
                        style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            color: Colors.black54),
                      ),
                      Text(
                        'Lng - (${details.address!.geo!.lng})',
                        style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
