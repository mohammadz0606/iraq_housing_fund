import 'package:flutter/services.dart';

final FilteringTextInputFormatter onlyIntNumber =
    FilteringTextInputFormatter.allow(
  RegExp(r'^[0-9]+\.?[0-9]{0,2}$'),
);
