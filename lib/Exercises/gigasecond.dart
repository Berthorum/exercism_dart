DateTime addGigasecondTo(final DateTime dateTime) {
  DateTime dateTimeAfterOneGigasecond = DateTime.fromMillisecondsSinceEpoch(
      1000000000000 + dateTime.millisecondsSinceEpoch,
      isUtc: true);

  return dateTimeAfterOneGigasecond;
}
