class Task{
  int id;
  String name;
  Task(this.name);
  
  Task.mapToTask(Map<String, dynamic> map){
    this.id = map['id'];
    this.name = map['name'];
  }

  taskToMap(){
    Map<String, dynamic> map = {
      'name' : this.name
    };
    if(id != null){
      map['id'] = this.id;
    }
    return map;
  }
}