class Enemy  {
float [] eX1 = new float [5];
  float [] eX2 = new float [5];
  float [] eX3 = new float [8];
  float [] eY1 = new float [5];
  float [] eY2 = new float [5];
  float [] eY3 = new float [8];
  float eWidth = 80;
  float eS = 6;
  float s1=0,s2=-1021,s3=-2042;
  PImage enemy;
  
  Enemy(){
    enemy = loadImage("img/enemy.png");
    eY1[0] = random(42,400);
    for(int i=1;i<5;i++){ 
    eY1[i]=eY1[0];
    }

    eY2[0] = random(42,200);
    for(int i=1;i<5;i++){ 
    eY2[i]=eY2[0]+i*40;
    }

   eY3[0] = random(42,180);
   eY3[1] = eY3[0]+61;
   eY3[2] = eY3[0]+122;
   eY3[3] = eY3[0]+183;
   eY3[4] = eY3[0]+244;
   eY3[5] = eY3[0]+183;
   eY3[6] = eY3[0]+122;
   eY3[7] = eY3[0]+61; 
    
  }
  void move(){
      //enemy move-1
  for(int i = 0;i<eX1.length;i++){  
    eX1[i]=0-i*eWidth+s1;
    if(s1>1100){
        eY1[0] = random(42,400);
        eY1[1]=eY1[0];
        eY1[2]=eY1[0];
        eY1[3]=eY1[0];
        eY1[4]=eY1[0];
    }
  }
      s1 += eS;
      s1 %= 2988;
  //enemy move-2
  for(int i = 0;i<eX2.length;i++){
    eX2[i]=0-i*eWidth+s2;
    if(s2>1100){
        eY2[0] = random(42,200);
        eY2[1]=eY2[0]+40;
        eY2[2]=eY2[0]+80;
        eY2[3]=eY2[0]+120;
        eY2[4]=eY2[0]+160;
    }
  }
      s2 += eS;
      s2 %= 2988;
  //enemy move-3
  for(int i = 0;i<eX3.length;i++){
      image(enemy,eX3[i],eY3[i],61,61);
      eX3[0] = -122+s3;
      eX3[1] = -183+s3;
      eX3[2] = -244+s3;
      eX3[3] = -183+s3;
      eX3[4] = -122+s3;
      eX3[5] = -61+s3;
      eX3[6] = 0+s3;
      eX3[7] = -61+s3;
      
      if(s3>1100){
        eY3[0] = random(42,180);
        eY3[1] = eY3[0]+61;
        eY3[2] = eY3[0]+122;
        eY3[3] = eY3[0]+183;
        eY3[4] = eY3[0]+244;
        eY3[5] = eY3[0]+183;
        eY3[6] = eY3[0]+122;
        eY3[7] = eY3[0]+61;
      }
   }
      s3 += eS;
      s3 %= 2988;
  
  }
  void display(){
    for(int i = 0;i<eX1.length;i++){
    image(enemy,eX1[i],eY1[i],61,61);
    }
    for(int i = 0;i<eX2.length;i++){
    image(enemy,eX2[i],eY2[i],61,61);
    }
    for(int i = 0;i<eX3.length;i++){
    image(enemy,eX3[i],eY3[i],61,61);
    }
  }
}
