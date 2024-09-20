//3651051541155 ภูวกร รุ่งปิติศุภากร
enum TransportationMode {
  Car, //100 km/h
  Bicycle, //20 km/h
  Train //150 km/h
}

double getSpeed(TransportationMode mode) {
  var speedMap = {
    TransportationMode.Car: 100.0,
    TransportationMode.Bicycle: 20.0,
    TransportationMode.Train: 150.0
  };

  // คืนค่าความเร็วตาม mode ที่กำหนด
  return speedMap[mode] ?? 0.0; // ใช้ ?? เพื่อคืนค่า 0.0 หากไม่พบ mode
}

void main() {
  print('Speed of Car: ${getSpeed(TransportationMode.Car)} km/h');
  print('Speed of Bicycle: ${getSpeed(TransportationMode.Bicycle)} km/h');
  print('Speed of Train: ${getSpeed(TransportationMode.Train)} km/h');
}