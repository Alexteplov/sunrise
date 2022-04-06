class GetDayBody {
  final double latitude;
  final double longitude;

  GetDayBody({required this.latitude, required this.longitude});

  Map<String, dynamic> toApi() => {
        'lat': latitude,
        'lng': longitude,
        'formatted': 0,
      };
}
