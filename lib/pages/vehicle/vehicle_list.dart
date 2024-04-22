import 'package:flutter/material.dart';
import 'package:satellite/design/dialog/error_dialog.dart';
import 'package:satellite/design/widgets/accent_button.dart';
import 'package:satellite/pages/driver/driver_page.dart';
import 'package:satellite/pages/vehicle/vehicle_item.dart';
import '../../design/utils/size_utils.dart';
import "/design/dimensions.dart";

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _updateButton(context)),
    ]);
  }

  Widget _list(BuildContext context) {

    return ListView.separated(

      itemCount: 15,
      padding:
          EdgeInsets.only(
              left: padding16,
              top: padding16,
              right: padding16,
              bottom: getListBottomPadding(context),
          ),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return VehicleItem(onTap: () async {
         await _showDriverPage(context);
        });
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(child: Padding(
      padding: const EdgeInsets.only(left: padding16, right: padding16 ,bottom: padding16),
      child: AccentButton(title: 'Обновит', onTap: () {
        _showErrorDialog(context);
      }),

    ));
  }

  void _showErrorDialog(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return ErrorDialog(description: 'Не работает!');
    });
  }

   Future <void> _showDriverPage(BuildContext context) async{
    await Navigator.push(context, MaterialPageRoute(builder: (context){
    return const DriverPage();
    }));
  }
}
