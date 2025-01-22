import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class InvoicePreview extends StatefulWidget {
  const InvoicePreview({required this.pdfBytes, super.key});
  final Uint8List pdfBytes;

  @override
  State<InvoicePreview> createState() => _InvoicePreviewState();
}

class _InvoicePreviewState extends State<InvoicePreview> {
  late final PdfController _pdfController;
  @override
  void initState() {
    _pdfController =
        PdfController(document: PdfDocument.openData(widget.pdfBytes));
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return InteractiveViewer(
          minScale: 1,
          child: SizedBox(
            height: constraints.maxWidth * 1.414,
            child: PdfView(controller: _pdfController),
          ),
        );
      },
    );
  }
}
