import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

///Dùng để cấu hình hiển thị vòng quay may mắn
@immutable
class Wheel extends Equatable {
  const Wheel({
    required this.fortuneValues,
    this.duration = const Duration(seconds: 10),
    this.isSpinByPriority = true,
    this.radius,
    this.rotationCount = 50,
    this.childSpinButton,
    this.action,
    this.spinButtonStyle,
    this.titleSpinButton,
    this.textStyleTitleSpinButton,
  })  : assert(fortuneValues.length >= 2),
        assert(rotationCount >= 0);

  ///Danh sách các phần tử may mắn
  final List<Fortune> fortuneValues;

  ///Thời gian quay
  final Duration duration;

  ///Kiểm tra đang là chế độ quay ngẫu nhiên hay theo giá trị ưu tiên quay trúng
  ///[isSpinByPriority] = true : theo giá trị ưu tiên quay trúng
  ///[isSpinByPriority] = false : quay ngẫu nhiên
  final bool isSpinByPriority;

  ///Số vòng quay đến kết quả
  ///Default value [rotationCount] = 50
  final int rotationCount;

  ///Bán kính bánh xe may mắn
  ///Default value [radius] = 0.8 * độ dài ngắn nhất của màn hình
  final double? radius;

  ///Widget child của nút quay
  final Widget? childSpinButton;

  ///Widget thay thế nút quay
  final Widget? action;

  ///ButtonStyle của nút quay
  final ButtonStyle? spinButtonStyle;

  ///Tiêu đề nút quay
  final String? titleSpinButton;

  ///style của Tiêu đề nút quay
  final TextStyle? textStyleTitleSpinButton;

  Wheel copyWith({
    List<Fortune>? fortuneValues,
    Duration? duration,
    bool? isGoByPriority,
    int? rotationCount,
    double? radius,
    Widget? childSpinButton,
    Widget? action,
    ButtonStyle? spinButtonStyle,
    String? titleSpinButton,
    TextStyle? textStyleTitleSpinButton,
  }) {
    return Wheel(
      fortuneValues: fortuneValues ?? this.fortuneValues,
      duration: duration ?? this.duration,
      isSpinByPriority: isGoByPriority ?? this.isSpinByPriority,
      rotationCount: rotationCount ?? this.rotationCount,
      radius: radius ?? this.radius,
      childSpinButton: childSpinButton ?? this.childSpinButton,
      action: action ?? this.action,
      spinButtonStyle: spinButtonStyle ?? this.spinButtonStyle,
      titleSpinButton: titleSpinButton ?? this.titleSpinButton,
      textStyleTitleSpinButton:
          textStyleTitleSpinButton ?? this.textStyleTitleSpinButton,
    );
  }

  @override
  List<Object?> get props => [
        fortuneValues,
        duration,
        isSpinByPriority,
        rotationCount,
        childSpinButton,
        radius,
        action,
        spinButtonStyle,
        titleSpinButton,
        textStyleTitleSpinButton,
      ];
}
