import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class DropDownMenu extends StatefulWidget {
  DropDownMenu({Key? key, required this.value}) : super(key: key);

  final List<String> value;

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  final dropList = [
    'Auto',
    'Lawncare',
    'Music',
    'Housework',
    'Childcare',
    'Manual Labor',
    'Animal Care'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFMultiSelect(
        items: dropList,
        onSelect: (value) {
          print('selected $value ');
        },
        dropdownTitleTileText: 'Preferences',
        dropdownTitleTileColor: Colors.white,
        dropdownTitleTileMargin:
            EdgeInsets.only(top: 22, left: 18, right: 18, bottom: 5),
        dropdownTitleTilePadding: EdgeInsets.all(10),
        dropdownUnderlineBorder:
            const BorderSide(color: Colors.transparent, width: 2),
        dropdownTitleTileBorder: Border.all(color: Colors.grey, width: 1),
        dropdownTitleTileBorderRadius: BorderRadius.circular(10),
        expandedIcon: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black54,
        ),
        collapsedIcon: const Icon(
          Icons.keyboard_arrow_up,
          color: Colors.black54,
        ),
        submitButton: Text('OK'),
        dropdownTitleTileTextStyle:
            const TextStyle(fontSize: 14, color: Colors.black54),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.all(6),
        type: GFCheckboxType.basic,
        activeBgColor: const Color(0x139065).withOpacity(0.5),
        inactiveBorderColor: Colors.white,
      ),
    );
  }
}
    
    
    
    
    
    
    
    
    
    
//     Scaffold(
//       appBar: AppBar(
//         title: Text('Preferences'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: DropdownButton<String>(
//           value: value,
//           iconSize: 36,
//           icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
//           items: items.map(buildMenuItem).toList(),
//           onChanged: (value) => setState(() => this.value = value),
//         ),
//       ),
//     );
//   }
// }

// DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
//       value: item,
//       child: Text(item,
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//     );
