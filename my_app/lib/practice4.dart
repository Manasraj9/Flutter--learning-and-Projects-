main(){
  // var map_name = {
  //   'Name':'Raman',
  //   'YOE':3,
  //   'Avg Rating':3.0,
  //   'CanLocateToOffice':true
  // };

  // map_name['key1']='Raman';
  // print(map_name['key1']);
  // print(map_name);

  var mapName = Map();
  mapName['Name']="Raman";
  mapName['YOE']="3";
  mapName['Avg rating']="4.5";
  mapName['CanRelocate']=true;
  
  
  print(mapName.isEmpty);
  print(mapName.isNotEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Name'));
  print(mapName.containsValue(false));
  print(mapName.remove('CanRelocate'));
  print(mapName);
  
}