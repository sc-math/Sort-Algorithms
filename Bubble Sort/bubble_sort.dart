BubbleSort(List<int> list){

  for(int i = list.length; i > 0; i--){

    bool isChanged = false;

    for(int j = 1; j < list.length; j++){

      if(list[j-1] > list[j]){

        int t = list[j-1];
        list[j-1] = list[j];
        list[j] = t;

        isChanged = true;
      }
    }

    if(!isChanged){
      return;
    }
  }
}