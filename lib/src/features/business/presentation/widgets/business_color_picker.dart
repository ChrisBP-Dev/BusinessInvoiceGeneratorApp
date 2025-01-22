import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class BusinessColorPicker extends StatefulWidget {
  const BusinessColorPicker({
    required this.initialColor,
    this.onColorChanged,
    super.key,
  });

  /// El color inicial en formato HEX
  final String initialColor;

  /// Callback para notificar el cambio de color
  final ValueChanged<Color>? onColorChanged;

  @override
  State<BusinessColorPicker> createState() => _BusinessColorPickerState();
}

class _BusinessColorPickerState extends State<BusinessColorPicker> {
  late Color _color;

  @override
  void initState() {
    super.initState();
    _color = widget.initialColor.colorFromHexColor;
  }

  Future<void> _openColorPicker() async {
    var selectedColor = _color;

    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Color'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: _color,
            onColorChanged: (color) {
              selectedColor = color;
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _color = selectedColor;
              });
              widget.onColorChanged?.call(selectedColor);
              Navigator.of(context).pop();
            },
            child: const Text('Select'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'Business Color:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          onTap: _openColorPicker,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _color,
              border: Border.all(color: Colors.black12),
            ),
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}
