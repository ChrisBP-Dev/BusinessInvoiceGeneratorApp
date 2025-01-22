import 'package:business_invoice_generator_app/src/core/commom_widgets/wrap_network_image.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/bool_extensions.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageMemoryPicked extends StatelessWidget {
  const ImageMemoryPicked({
    required this.image,
    required this.onImageAdded,
    super.key,
    this.width,
    this.height,
    this.deleteTap,
    this.fit,
  });

  final double? width;
  final double? height;
  final void Function(Uint8List) onImageAdded;
  final VoidCallback? deleteTap;
  final FileAndPath image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final child = (!image.isEmpty).when(
      isTrue: () => image.hasLocalFile.when(
        isTrue: () => Image.memory(
          image.localFileCharCode!,
          fit: fit,
        ),
        isFalse: () => WrapNetworkImage(
          imageUrl: image.url!,
          width: width,
          height: height,
          fit: fit,
        ),
      ),
      isFalse: () => const FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt_outlined,
              size: 35,
            ),
            gapH14,
            Text('Upload'),
            Text('image'),
          ],
        ),
      ),
    );
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () async {
              final picker = ImagePicker();
              final image = await picker.pickImage(
                source: ImageSource.gallery,
                imageQuality: 65,
              );

              if (image != null) {
                onImageAdded.call(await image.readAsBytes());
              }
            },
            child: Container(
              width: width,
              height: height,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(),
              ),
              padding: (!image.isEmpty) ? null : const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: child,
              ),
            ),
          ),
          if (!image.isEmpty)
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                color: Colors.white,
                icon: const Icon(Icons.delete),
                onPressed: deleteTap,
              ),
            ),
        ],
      ),
    );
  }
}
