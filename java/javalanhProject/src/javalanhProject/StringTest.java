package javalanhProject;

import java.util.Calendar;
import java.util.Random;
import java.util.Scanner;

public class StringTest {
    public static void main(String[] args) {
//        int score = 90;
//        System.out.println(score + 100);
//
////        valuesOf()
//
//        String s = String.valueOf(score); // "90"
//        System.out.println(s + 100);
//
////        equals()
//
////        charAt()
//
//        String string = "abcdef";
//        System.out.println(string.charAt(2));
//
////        length()
//        System.out.println(string.length());
//
//        String str = "Hello My Name is Hong Gil Dong";
//        System.out.println(str.indexOf("Hong"));
//        System.out.println(str.charAt(17));

//        StringBuffer sb = new StringBuffer();
//        sb.append("abc");
//        sb.append("def");
//        System.out.println(sb.toString()); // StringByffer -> String

        // Math.random()

        // Wrapper
        // Auto boxing(기본형과 참조형의 형변환)

//        int i = 10;
//        Integer it = new Integer(20);
//
//        Scanner scanner = new Scanner(System.in);
//
//        System.out.println(i);
//        System.out.println(it);
//        System.out.println(scanner);
//
//        Integer it2 = 50;
//        Integer it3 = 30;
//
//        System.out.println(it2 + it3);
//        int i2 = (int) it3;
//        System.out.println(i2);
        ////////////////////////

//        int x = 100;
//        String s = String.valueOf(x); // "100"

//        String str = "200";
//        int num = Integer.parseInt(str); // 200

//        int x = 10;
//        Object object = x; // (Integer)x

//        System.err.println(object.toString());

//        Random r1 = new Random(30);
//        Random r2 = new Random(30);
//        Random r3 = new Random();
//        Random r4 = new Random();
//
//        System.out.println("r1");
//        for (int i = 0; i < 5; i++) {
//            System.out.println(r1.nextInt());
//        }
//
//        System.out.println("r2");
//        for (int i = 0; i < 5; i++) {
//            System.out.println(r2.nextInt());
//        }
//
//        System.out.println("r3");
//        for (int i = 0; i < 5; i++) {
//            System.out.println(r3.nextInt());
//        }
//
//        System.out.println("r4");
//        for (int i = 0; i < 5; i++) {
//            System.out.println(r4.nextInt(6) + 1);
//        }
//
//        Scanner scanner = new Scanner(System.in);
//        System.out.println("숫자 하나 입력 : ");
//        int num = scanner.nextInt();
//        System.out.println("이름을 입력 : ");
//        String name = scanner.nextLine();
//
//        System.out.println(num);
//        System.out.println(name);

        Calendar start = Calendar.getInstance();
        Calendar end = Calendar.getInstance();
        Scanner scanner = new Scanner(System.in);
        System.out.println("년도입력:");
        int year = 2023;
        System.out.println("달입력:");
        int month = 7;

        int dayweek = start.get(Calendar.DAY_OF_WEEK);
        System.out.println();
        System.out.println(year + "년" + month + "월");
        System.out.println("SU MO TU WE TH FR SA");

        for (int i = 1; i < dayweek; i++) {
            System.out.print("   ");
        }

        for (int i = 1, n = dayweek; i <= end.get(Calendar.DATE); i++, n++) {
            if (i < 10) {
                System.out.print(" " + i + "  ");
            } else {
                System.out.print(i + "  ");
            }
            if (n % 7 == 0) {
                System.out.println();
            }
        }
    }
}
