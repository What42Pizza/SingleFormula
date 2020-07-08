// Simga operator code
// I found out how to use the code extension (like with the operator class) from https://github.com/Anuken/Mindustry/blob/master/core/src/mindustry/content/Bullets.java (see line 429)



long Sigma (long StartNum, long EndNum, long[] Args, Operator Op) {
  long Sum = 0;
  for (long i = StartNum; i < EndNum; i ++) {
    Sum += Op.Calc(i, Args);
  }
  return Sum;
}





public class Operator {
  public long Calc (long In, long[] Args) {return 0;}
}
