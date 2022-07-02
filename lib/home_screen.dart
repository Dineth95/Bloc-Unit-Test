import 'package:bloc_unit_test_example/home_bloc/home_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
          if (state is HomeScrenLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is HomeScreenFailed) {
            return Center(child: Text(state.error.toString()));
          }

          if (state is HomeScreenProductsLoaded && state.list != null) {
            return ListView(
                addAutomaticKeepAlives: true,
                children: state.list!
                    .map((e) => Material(
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            //height: 200,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        e?.image ?? '',
                                        width: 50,
                                        height: 50,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          e?.title ?? '',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                          //textAlign: TextAlign.left,
                                          maxLines: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    e?.description ?? '',
                                    textAlign: TextAlign.justify,
                                  )
                                ]),
                          ),
                        ))
                    .toList());
          }

          return Container();
        }),
      ),
    );
  }
}
