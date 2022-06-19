import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import '../blocs/blocs.dart';
import '../widgets/widgets.dart';
import '../../core/constant/constant.dart';
import '../../core/extensions/extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _imageUrlNotifier = ValueNotifier<String>('');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _imageUrlNotifier.dispose();
    super.dispose();
  }

  void setImage(String? value) {
    _imageUrlNotifier.value = value ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: AppStrings.title,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _buildResults(),
      ),
      bottomNavigationBar: _bottomBarActions(),
    );
  }

  Widget _buildResults() {
    return BlocBuilder<FruitsBloc, FruitsState>(
      builder: (context, state) {
        if(state.shared.fruitsLoadingState == FruitsLoadingState.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if(state.shared.fruitsLoadingState == FruitsLoadingState.error) {
          return const Center(child: Text(AppStrings.errorMessages));
        }
        return ValueListenableBuilder<String>(
            valueListenable: _imageUrlNotifier,
            builder: (BuildContext context, String value, Widget? child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemCount: state.shared.fruits.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.white,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){
                              setImage(state.shared.imageReferences[state.shared.fruits[index].name]);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(state.shared.fruits[index].name!.capitalize()),
                                  Text('total Rp. ${state.shared.fruits[index].price!}'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: value,
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        CircularProgressIndicator(value: downloadProgress.progress),
                    errorWidget: (context, url, error) =>
                        Image.asset(AppStrings.errorImages),
                  ),
                ),
              ],
            );
          }
        );
      }
    );
  }

  Widget _bottomBarActions() {
    return BlocBuilder<FruitsBloc, FruitsState>(
      builder: (context, state) {
        if(state.shared.fruitsLoadingState == FruitsLoadingState.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if(state.shared.fruitsLoadingState == FruitsLoadingState.error) {
          return const Center(child: Text(AppStrings.errorMessages));
        }
        return BottomButtonBarWidget(
          title: AppStrings.bottomButton,
          onPressed: (){
            AwesomeDialog(
              context: context,
              dialogType: DialogType.NO_HEADER,
              animType: AnimType.TOPSLIDE,
              title: 'Alert',
              desc: '${'${state.shared.mostFruitsKey}'.capitalize()} total is ${state.shared.mostFruitsValue}',
              btnCancelOnPress: (){},
              btnCancelText: 'Close',
              btnCancelColor: AppColors.primary,
            ).show();
          },
        );
      }
    );
  }
}
