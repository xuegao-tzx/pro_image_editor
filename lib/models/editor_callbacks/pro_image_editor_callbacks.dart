// Flutter imports:
import 'package:flutter/widgets.dart';

// Project imports:
import 'editor_callbacks_typedef.dart';
import 'text_editor_callbacks.dart';

export 'editor_callbacks_typedef.dart';
export 'text_editor_callbacks.dart';

/// A class representing callbacks for the Image Editor.
class ProImageEditorCallbacks {
  /// A callback function that will be called when the editing is done,
  /// and it returns the edited image as a `Uint8List` with the format `jpg`.
  ///
  /// The edited image is provided as a Uint8List to the [onImageEditingComplete] function
  /// when the editing is completed.
  ///
  /// <img src="https://github.com/hm21/pro_image_editor/blob/stable/assets/schema_callbacks.jpeg?raw=true" alt="Schema" height="500px"/>
  final ImageEditingCompleteCallback onImageEditingComplete;

  /// A callback function that is called when the editing is complete and the
  /// thumbnail image is generated, along with capturing the original image as a raw `ui.Image`.
  ///
  /// This callback is particularly useful if you have a high-resolution image that
  /// typically takes a long time to generate. It allows you to display the thumbnail quickly
  /// while the conversion of the original image runs in the background.
  /// When you use this callback, it will disable the `onImageEditingComplete` callback.
  ///
  /// - [thumbnailBytes]: The bytes of the generated thumbnail image.
  /// - [rawImage]: The raw `ui.Image` object of the original image.
  ///
  /// Example usage:
  /// ```dart
  /// onThumbnailGenerated: (Uint8List thumbnailBytes, ui.Image rawImage) async {
  ///   // Perform operations with the thumbnail bytes and raw image
  /// };
  /// ```
  final ThumbnailGeneratedCallback? onThumbnailGenerated;

  /// A callback function that is triggered when the image generation is started.
  final Function()? onImageEditingStarted;

  /// A callback function that will be called before the image editor will close.
  ///
  /// <img src="https://github.com/hm21/pro_image_editor/blob/stable/assets/schema_callbacks.jpeg?raw=true" alt="Schema" height="500px" />
  final ImageEditingEmptyCallback? onCloseEditor;

  /// A callback function that can be used to update the UI from custom widgets.
  final UpdateUiCallback? onUpdateUI;

  /// A callback function that is triggered when a layer is added.
  final Function()? onAddLayer;

  /// A callback function that is triggered when a layer is removed.
  final Function()? onRemoveLayer;

  /// A callback function that is triggered when a sub-editor is opened.
  final Function()? onOpenSubEditor;

  /// A callback function that is triggered when a sub-editor is closed.
  final Function()? onCloseSubEditor;

  /// A callback function that is triggered when a scaling gesture starts.
  ///
  /// The [ScaleStartDetails] parameter provides information about the scaling gesture.
  final Function(ScaleStartDetails)? onScaleStart;

  /// A callback function that is triggered when a scaling gesture is updated.
  ///
  /// The [ScaleUpdateDetails] parameter provides information about the scaling gesture.
  final Function(ScaleUpdateDetails)? onScaleUpdate;

  /// A callback function that is triggered when a scaling gesture ends.
  ///
  /// The [ScaleEndDetails] parameter provides information about the scaling gesture.
  final Function(ScaleEndDetails)? onScaleEnd;

  /// Callbacks from the text editor.
  final TextEditorCallbacks? textEditorCallbacks;

  const ProImageEditorCallbacks({
    required this.onImageEditingComplete,
    this.onThumbnailGenerated,
    this.onImageEditingStarted,
    this.onCloseEditor,
    this.onUpdateUI,
    this.onAddLayer,
    this.onRemoveLayer,
    this.onOpenSubEditor,
    this.onCloseSubEditor,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.textEditorCallbacks,
  });
}