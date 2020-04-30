class Notes{
final String lon;
final String lat;
final String state;
Notes({this.lon,this.lat,this.state});
factory Notes.fromJson(Map<String,dynamic>json){
  return Notes(
      lon: json['lon'],
      lat: json['lat'],
  );
}
}
