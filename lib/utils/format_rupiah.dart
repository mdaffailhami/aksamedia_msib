String formatRupiah(int value) {
  final chars = value.toString().split('');

  final formattedChars = [];

  for (var (i, char) in chars.reversed.indexed) {
    formattedChars.add(char);

    if ((i + 1) % 3 == 0 && (i + 1) != chars.length) formattedChars.add('.');
  }

  return 'Rp${formattedChars.reversed.join()}';
}
