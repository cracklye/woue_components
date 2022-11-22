import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter/widgets.dart';
import 'package:woue_components/woue_components.dart';

class AttachmentInfo {
  AttachmentInfo(
      {this.path,
      this.content,
      this.fileExtension,
      this.contentType,
      this.isUpdated = false,
      this.isClear = false,
      this.fileSize = 0});

  final String? path;
  final Uint8List? content;
  final String? fileExtension;
  final String? contentType;
  final bool isUpdated;
  final bool isClear;
  final int fileSize;

  factory AttachmentInfo.empty() {
    return AttachmentInfo(isUpdated: false, isClear: false);
  }
  factory AttachmentInfo.clear() {
    return AttachmentInfo(isUpdated: false, isClear: true);
  }

  @override
  String toString() {
    return 'path: $path, contentType: $contentType, ext: $fileExtension';
  }
}

class AttachmentSelect extends StatelessWidget {
  const AttachmentSelect({
    super.key,
    //required this.fieldType,
    this.extensions,
    this.onChanged,
    this.multiSelect = false,
    this.selected,
  });
  final AttachmentInfo? selected;

  final List<String>? extensions;
  final Function(AttachmentInfo? infos)? onChanged;
  final bool multiSelect;

// const String fieldAttachmentContent = "attachmentContent";
// const String fieldAttachmentExtension = "attachmentExtension";
// const String fieldAttachmentContentType = "attachmentContentType";
// const String fieldAttachmentPath = "attachmentPath";
// const String fieldAttachmentFieldName = "attachmentFieldName";

  @override
  m.Widget build(BuildContext context) {
    return Woue.provider
        .attachmentSelect(selected, extensions, onChanged, multiSelect);
  }
}
