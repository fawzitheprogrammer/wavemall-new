import 'package:intl/intl.dart';

String formatPrice(double price, {required String currencySymbol}) {
  if (price >= 100) {
    // Use NumberFormat to format the price with commas and add the currency symbol
    return currencySymbol + NumberFormat('#,###').format(price);
  } else {
    // Simply add the currency symbol to the price as a string
    return currencySymbol + price.toString();
  }
}
