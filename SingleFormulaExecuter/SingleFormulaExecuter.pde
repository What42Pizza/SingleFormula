// Started: ------ 07/08/20
// Last worked on: 07/07/20



final long Rule = 110L;
final int GridSize = 10;





void setup() {
  size (500, 500);
  background (255);
  fill (0);
  long Num = 1;
  
  
  
  for (int i = 0; i < 50; i ++) {
    Num = f(Num);
    RenderNumber (Num, i);
  }
  
  
  
}





/**/
long f (long Num) {
  return Sigma (1, 60, new long[] {Num}, new Operator() {@Override public long Calc (long n, long[] Args) {
      long Num = Args[0];
      return (((Rule % pow(2, ((Num % pow(2, n + 2)) - ((Num % pow(2, n + 2)) % pow(2, n - 1))) / pow(2, n - 1) + 1)) - ((Rule % pow(2, ((Num % pow(2, n + 2)) - ((Num % pow(2, n + 2)) % pow(2, n - 1))) / pow(2, n - 1) + 1)) % pow(2, ((Num % pow(2, n + 2)) - ((Num % pow(2, n + 2)) % pow(2, n - 1))) / pow(2, n - 1)))) / pow(2, ((Num % pow(2, n + 2)) - ((Num % pow(2, n + 2)) % pow(2, n - 1))) / pow(2, n - 1))) * pow(2, n);
  }});
}
//*/





/*

long f (long Num) {
  long Sum = 0;
  for (int i = 1; i < 50; i ++) {
    long SurrCells = ((Num % pow(2, i + 2)) - ((Num % pow(2, i + 2)) % pow(2, i - 1))) / pow(2, i - 1);
    long NewCell = ((Rule % pow(2, SurrCells + 1)) - ((Rule % pow(2, SurrCells + 1)) % pow(2, SurrCells))) / pow(2, SurrCells); // ((110 % pow(2, 0 + 1)) - ((110 % pow(2, 0 + 1)) % pow(2, 0))) / pow(2, 0)
    Sum += NewCell * pow(2, i);
  }
  return Sum;
}

//*/





// Usable functions



long pow (long Num, long Power) {
  if (Power == 0) {return 1;}
  long Result = Num;
  for (int i = 1; i < Power; i ++) {
    Result *= Num;
  }
  return Result;
}



void RenderNumber (long Num, int Height) {
  for (int b = 64; b >= 0; b --) {
    if ((Num & pow(2, b)) > 0) {
      rect ((width - b * GridSize), Height * GridSize, GridSize, GridSize);
    }
  }
}
