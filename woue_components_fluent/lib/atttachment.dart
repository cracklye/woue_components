import 'dart:io';

import 'package:desktop_drop/desktop_drop.dart';
//import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/material.dart' as m;
import 'package:flutter/widgets.dart';
import 'package:woue_components/woue_components.dart';

class FluentAttachmentWidget extends StatefulWidget {
  const FluentAttachmentWidget(
      {super.key,
      this.imageHeight = 200,
      this.emptyHeight = 30,
      this.selected,
      this.enableMulti = false,
      this.onChanged,
      this.extensions});
  final List<String>? extensions;
  final double imageHeight;
  final double emptyHeight;
  final AttachmentInfo? selected;
  final bool enableMulti;
  final Function(AttachmentInfo? infos)? onChanged;

  @override
  State<FluentAttachmentWidget> createState() => _FluentAttachmentWidgetState();
}

class _FluentAttachmentWidgetState extends State<FluentAttachmentWidget> {
  Offset? offset;
  bool _dragging = false;
  AttachmentInfo? _selected;

  @override
  void initState() {
    _selected = widget.selected;
    super.initState();
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [_buildContent1(context), Text(_selected.toString())],
    );
  }

  Widget _buildContent1(BuildContext context) {
    if (_selected == null || ! _selected!.isUpdated) {
      return _buildNotSelected(context);
    } else if (widget.enableMulti) {
      return _buildContentSingle(context);
    } else {
      return _buildContentSingle(context);
    }
  }

  Widget _buildNotSelected(BuildContext context) {
    return GestureDetector(
      child: const Expanded(
          child: Center(child: Text("drag or click to select file(s)"))),
      onTap: () => print("Hi"),
    );
  }

  Widget _getContent(AttachmentInfo info) {
    return Image.file(File(info.path!));
  }

  Widget _buildContentSingle(BuildContext context) {
    if (_selected != null) {
      //if image...
      return Stack(children: [
        Center(child: _getContent(_selected!)),
        //TODO add delete button
      ]);
    }
    return Text(_selected.toString());
  }

  void _clear() {
    AttachmentInfo info = AttachmentInfo.clear();
    _selected = null;
    _updateList(info);
  }

  void _updateList(AttachmentInfo list) {
    if (widget.onChanged != null) {
      widget.onChanged!(list);
    }
    setState(() {
      _selected = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropTarget(
        onDragDone: (detail) async {
          AttachmentInfo? info;
          if (detail.files.isNotEmpty) {
            info = AttachmentInfo(
              path: detail.files[0].path,
              contentType: detail.files[0].mimeType,
              isUpdated: true, 
              //fileExtension: extension(file.path)
            );
          }
          if (info != null) {
            _updateList(info!);
          }
        },
        onDragUpdated: (details) {
          setState(() {
            offset = details.localPosition;
          });
        },
        onDragEntered: (detail) {
          setState(() {
            _dragging = true;
            offset = detail.localPosition;
          });
        },
        onDragExited: (detail) {
          setState(() {
            _dragging = false;
            offset = null;
          });
        },
        child: Container(
          color: _dragging
              ? m.Colors.blue.withOpacity(0.4)
              : m.Colors.grey.withOpacity(0.4),
          child: _buildContent(context),

          // height: hasCoverImage ? widget.imageHeight : widget.emptyHeight,
          // // width: 200,
          // color: _dragging
          //     ? m.Colors.blue.withOpacity(0.4)
          //     : m.Colors.grey.withOpacity(0.4),
          // child: SizedBox(
          //     height: hasCoverImage ? widget.imageHeight : widget.emptyHeight,
          //     child:
          //         // TODO need to add back inhasCoverImage?Image.file(File(AttachmentDAO.getPath(widget.coverImage.coverImageUri)), fit: BoxFit.cover):
          //         hasCoverImage
          //             ? Stack(children: [
          //                 CoverImageImage(
          //                     coverImage: widget.coverImage, fit: BoxFit.cover),
          //                 ElevatedButton(
          //                     onPressed: () =>
          //                         BlocProvider.of<ModelsBloc<T>>(context).add(
          //                             ModelsDeleteAttachment<T>(
          //                                 widget.model.id, "coverImage")),
          //                     child: const Text("remove"))
          //               ])
          //             : ElevatedButton(
          //                 child: Text(
          //                     "Drop cover image here ${widget.coverImage.coverImage}"))),
        ));
  }
}
