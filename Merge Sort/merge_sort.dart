MergeSort(List<int> list, int l, int r){

  if(r > l){

    int m = (l + r)~/2;

    MergeSort(list, l, m);
    MergeSort(list, m+1, r);
    Merge(list, l, m, r);

  }
}

Merge(List<int> list, int l, int m, int r){


  int n1 = m - l + 1;
  int n2 = r - m;

  List<int> B1 = [];
  List<int> B2 = [];

  for(int i = 0; i < n1; i++)
    B1.add(list[l + i]);

  for(int i = 0; i < n2; i++)
    B2.add(list[m + 1 + i]);


  int i = 0;
  int j = 0;
  int k = l;

  while(i < n1 && j < n2) {
    if (B1[i] <= B2[j]) {
      list[k] = B1[i];
      i++;
    }
    else {
      list[k] = B2[j];
      j++;
    }
    k++;
  }

  while(i < n1) {
    list[k] = B1[i];
    i++;
    k++;
  }

  while(j < n2){
    list[k] = B2[j];
    j++;
    k++;
  }
}