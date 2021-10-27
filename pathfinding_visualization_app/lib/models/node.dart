class Node {
  final int rowID;
  final int columnID;
  // String status;
  bool isBlocked = false;
  bool isStart = false;
  bool isFinish = false;

  final int previousNode;
  final int path;
  final int direction;
  final int storedDirection;
  final int distance;
  final int totalDistance;
  final int heuristicDistance;
  final int weight;
  final int relatesToObject;
  final int overwriteObjectRelation;
  

  Node({
    required this.rowID,
    required this.columnID,
    // required this.status,
  });

  void setBlock() {
    isBlocked = !isBlocked;
  }
}
