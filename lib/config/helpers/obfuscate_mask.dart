  String obfuscateMask(String creditCardNumber) {
    List<String> parts = creditCardNumber.toString().split('.');
    RegExp reg = RegExp(r'\B(?=(\d{4})+(?!\d))');

    parts[0] = parts[0].replaceAll(reg, ' ');
    List<String> dataString = parts[0].split(' ');
    // return '**** **** **** $dataString';
    return '**** **** **** ' + dataString[3];
  }