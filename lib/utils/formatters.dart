import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Formatters {
  Formatters._();

  static final phone = MaskTextInputFormatter(
    mask: '8-###-###-##-##',
    filter: {"#": RegExp('[0-9]')},
  );

  static final imei = MaskTextInputFormatter(
    mask: '###############',
    filter: {"#": RegExp('[0-9]')},
  );

  // Ограничение в 30 симоволов
  static final serial = MaskTextInputFormatter(
    mask: '#############################',
    filter: {"#": RegExp('[a-zA-Z0-9]')},
  );

  static final firstName = MaskTextInputFormatter(
    mask: '#############################',
    filter: {"#": RegExp('[a-zA-Z0-9\u0401\u0451\u0410-\u044f]')},
  );

  static final secondName = MaskTextInputFormatter(
    mask: '#############################',
    filter: {"#": RegExp('[a-zA-Z0-9\u0401\u0451\u0410-\u044f]')},
  );

  static final patronymic = MaskTextInputFormatter(
    mask: '#############################',
    filter: {"#": RegExp('[a-zA-Z0-9\u0401\u0451\u0410-\u044f]')},
  );
}
