import 'package:flutter/material.dart';
import 'package:machine_test_brainwired/controller/home_controller.dart';
import 'package:machine_test_brainwired/utils/colors.dart';
import 'package:machine_test_brainwired/view/widgets/details_container.dart';
import 'package:machine_test_brainwired/view/widgets/shimmer_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeContoller>(context, listen: false);
    provider.getDetails();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Consumer<HomeContoller>(builder: (context, value, child) {
          return value.detailsModel.isEmpty
              ? ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ShimmerWidget(),
                    );
                  },
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: value.detailsModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 4,
                      ),
                      child: DetailsContainer(
                        size: size,
                        details: value.detailsModel[index],
                      ),
                    );
                  },
                );
        }),
      ),
    );
  }
}
