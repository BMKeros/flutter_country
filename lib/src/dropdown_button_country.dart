import 'package:flutter/material.dart';

class DropdownButtonCountry<T> extends DropdownButton {
  DropdownButtonCountry({
    Key key,
    @required items,
    value,
    hint,
    disabledHint,
    @required onChanged,
    elevation = 8,
    style,
    underline,
    icon,
    iconDisabledColor,
    iconEnabledColor,
    iconSize = 24.0,
    isDense = false,
    isExpanded = false,
  }) : super(
          key: key,
          items: items,
          value: value,
          hint: hint,
          disabledHint: disabledHint,
          onChanged: onChanged,
          elevation: elevation,
          style: style,
          underline: underline,
          icon: icon,
          iconDisabledColor: iconDisabledColor,
          iconEnabledColor: iconEnabledColor,
          iconSize: iconSize,
          isDense: isDense,
          isExpanded: isExpanded,
        );
}
