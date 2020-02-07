import java.util.Scanner;

public class Simple
{
  public static void main(String[] args)
  {
    Scanner S = new Scanner(System.in);
    int N = Integer.parseInt(S.nextLine());
    long[] vals = new long[N];
    for(int i = 0; i < N; i += 1) {
      vals[i] = Long.parseLong(S.nextLine());
    }

    for (int i = 0; i < N; i += 1) { // i goes through {0,...,N-1}
      // your code goes here
    }
  }
}
