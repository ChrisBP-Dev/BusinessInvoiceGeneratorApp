import 'package:business_invoice_generator_app/src/core/commom_widgets/image_memory_picked.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/uint8list_extension.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:flutter/material.dart';

class ImageBusinessPicker extends StatefulWidget {
  const ImageBusinessPicker({
    required this.newImage,
    this.image,
    super.key,
  });

  final FileAndPath? image;
  final void Function(String?) newImage;

  @override
  State<ImageBusinessPicker> createState() => _ImageBusinessPickerState();
}

class _ImageBusinessPickerState extends State<ImageBusinessPicker> {
  late FileAndPath _image;

  @override
  void initState() {
    _image = widget.image ?? const FileAndPath();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ImageMemoryPicked(
        height: 100,
        image: _image,
        fit: BoxFit.contain,
        onImageAdded: (newImage) {
          setState(
            () => _image = FileAndPath(
              localFile: newImage.codeUnitsString,
            ),
          );
          widget.newImage(newImage.codeUnitsString);
        },
        deleteTap: () {
          setState(() => _image = const FileAndPath());
          widget.newImage(null);
        },
      ),
    );
  }
}
