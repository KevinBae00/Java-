import java.util.Scanner;

public class Practice1 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        /*System.out.print("나이: ");
        int age = s.nextInt();
        System.out.printf("키: ");
        double height = s.nextDouble();
        System.out.printf("보호자 동반 가능 여부: ");
        boolean parent = s.nextBoolean();
        System.out.printf("심장관련 질환 여부: ");
        boolean hearchDease = s.nextBoolean();

        if ((age >= 6 || parent) && height >= 120 && !hearchDease) {
            System.out.println("탑승 가능");
        } else System.out.println("탑승 불가");*/

        /*int year = 2020;

        boolean leapYear = year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);

        System.out.println(leapYear);*/

        /*int price = 187000;
        int oman = price / 50000;
        price %= 50000;
        int ilman = price / 10000;
        price %= 10000;
        int ochun = price / 5000;
        price %= 5000;
        int ilchun = price / 1000;

        System.out.println("5만원권 : " + oman + "장");
        System.out.println("1만원권 : " + ilman + "장");
        System.out.println("5천원권 : " + ochun + "장");
        System.out.println("1천원권 : " + ilchun + "장");*/

        int number = 1234;
        int result = (number / 100) * 100;
        System.out.println(result);
    }
}
