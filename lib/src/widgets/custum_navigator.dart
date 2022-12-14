import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/src/providers/ui_provider.dart';

class CustumNavigation extends StatelessWidget {
  const CustumNavigation({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final uiProvider= Provider.of<UIProvider>(context);
    final currentIndex=uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i){
        uiProvider.selectedMenuOpt=i;

      },
      currentIndex: currentIndex,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa'
        ),
        
         BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones'
        ),
      ],

      
    );
  }
}