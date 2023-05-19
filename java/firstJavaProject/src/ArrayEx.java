import java.util.Scanner;

public class ArrayEx {
    public static void main(String[] args) {
        // for(int i=1; i<=11;i++){
        //   for(int j=1;j<=11;j++){
        //     if(i<=6){
        //       if(j<=i&&j<=6)System.out.print("*");
        //       else if(11-i>=j)System.out.print(" ");
        //       else System.out.print("*");
        //     }else{// i>=7
        //       if(j<=12-i)System.out.print("*");
        //       else if(j<=i-1)System.out.print(" ");
        //       else System.out.print("*");
        //     }
        //   }
        //   System.out.println();
        // }

        // 배열
        // 타입이 동일한 여러개의 변수를 만들기 위한 형식
        // 1차원
        // 다차원 - 2차원 이상의 배열

        // int[] arr = new int[5];
        // for(int i=0; i<5; i++){ // i =0,1,2,3,4;
        //   arr[i]=i+1;
        // }

        // for(int i =0; i <5; i++){
        //   System.out.println("arr["+i+"] = " + arr[i]);
        // }

        // int[] arr = new int[10];

        // //1 ~ 10 값을 삽입
        // int sum = 0;
        // for(int i=0; i<arr.length;i++){
        //   arr[i]=i+1;
        //   sum += arr[i];
        // }

        // System.out.println(sum);

        // String[] str = new String[3];
        // str[0] = "홍길동";

        // String[] arr = new String[10];
        // arr[0]="hello";
        // for(int i=0; i<arr.length;i++){
        //   System.out.println(arr[i]);
        // }

        // 1 ~ 45
        // (int)(Math.random() * 난수의 총 개수) + 난수의 최솟값

        // System.out.println((int)(Math.random() * 45 - 1 + 1) +1);
    /*    int[] lotto = new int[6];

        int idx = 0;

        while (idx < 6) {
            int num = (int) (Math.random() * 45 - 1 + 1) + 1;

            boolean insert = true;
            for (int i = 0; i < idx; i++) {
                if (lotto[i] == num) {
                    insert = false;
                    break;
                }
            }

            if (insert) {
                lotto[idx] = num;
                idx++;
            }
        }

        for (int i = 0; i < 6; i++) {
            System.out.print(lotto[i] + ", ");
        }*/

//        int[][] arr;
//        arr = new int[5][3];
//
//        arr[0][0] = 1;
//        arr[0][1] = 2;
//        arr[0][2] = 3;
//
//        arr[1][0] = 4;
//        arr[1][1] = 5;
//        arr[1][2] = 6;
//
//        arr[4][2] = 15;
//
//        System.out.println(arr[0][0]);
//        System.out.println(arr[4][2]);

//        int[][] arr = {
//                {1, 2, 3},
//                {4, 5, 6},
//                {7, 8, 9},
//                {10, 11, 12},
//                {13, 14, 15}
//        };

//        int[][] arr = new int[5][3];
//        for (int i = 0; i < 5; i++) {
//            for (int j = 0; j < 3; j++) {
//                arr[i][j] = 1;
//                System.out.println(arr[i][j]);
//            }
//        }

//        int[][] arr = new int[5][3];
//        // 1 ~ 15
//        // 반복문을 이용하여 값 초기화
//        // 값을 출력(2차 배열)
//        // 짝수만 출력 한다.
//
//        for (int i = 0; i < 5; i++) {
//            for (int j = 0; j < 3; j++) {
//                arr[i][j] = i * 3 + j + 1;
//                if (arr[i][j] % 2 == 0) System.out.print(arr[i][j] + ", ");
//            }
//        }

//        int distinct = 0;
//        int[] a = new int[10];
//        boolean flag = true;
//        Scanner sc = new Scanner(System.in);
//        for (int i = 0; i < 10; i++) {
//            a[i] = sc.nextInt() % 42;
//            System.out.println(a[i]);
//            for (int j = 0; j < i; j++) {
//                if (a[i] == a[j]) {
//                    flag = false;
//                    break;
//                }
//            }
//            if (flag) {
//                distinct++;
//            }
//            flag = true;
//        }
//        System.out.println(distinct);

        char[][] star = {
                {'*', '*', ' ', ' ', ' '},
                {'*', '*', ' ', ' ', ' '},
                {'*', '*', '*', '*', '*'},
                {'*', '*', '*', '*', '*'},
        };

        for (int i = 0; i < star.length; i++) {
            for (int j = 0; j < star[i].length; j++) {
                System.out.print(star[i][j]);
            }
            System.out.println();
        }

        char[][] star90 = new char[star[0].length][star.length];

        for (int i = 0; i < star.length; i++) {
            for (int j = 0; j < star[i].length; j++) {
                int y = star.length - 1 - i;
                star90[j][y] = star[i][j];
            }
        }

        for (int i = 0; i < star90.length; i++) {
            for (int j = 0; j < star90[i].length; j++) {
                System.out.print(star90[i][j]);
            }
            System.out.println();
        }
       
    }
}
