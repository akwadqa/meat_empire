extension CardNumberFormatter on String {
  String toCardNumberFormat() {
    final buffer = StringBuffer();
    final cleaned = this.replaceAll(RegExp(r'\D'), ''); // Remove non-digits

    for (int i = 0; i < cleaned.length; i++) {
      buffer.write(cleaned[i]);
      if ((i + 1) % 4 == 0 && i + 1 != cleaned.length) {
        buffer.write(' - '); // Add dash after every 4 digits
      }
    }

    return buffer.toString();
  }
}
