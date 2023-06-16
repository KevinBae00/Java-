class Quiz1_2 {

    public static void main(String[] arg) {


        Calculator cal = new Calculator();


//2개의 매개변수 값의 합을 출력

        System.out.println(cal.add(3, 4));


//2개의 매개변수 값을 나눈 값을 출력

        System.out.println(cal.divide(3, 2));


//매개변수값이 90이상이면 'A'출력, 90이하이면 'B'출력

        System.out.println(cal.level(80));


//두개의 매개변수값을 비교하여 같으면 true, 다르면 false

        System.out.println(cal.compare('A', 'a'));


// 두개의 문자열을 결합하여 출력

        System.out.println(cal.toString("수박", "포도"));

    }

}

class Calculator {


    public int add(int x, int y) {
        return x + y;
    }

    public float divide(int x, int y) {
        return (float) x / y;
    }


    public char level(int i) {
        if (i >= 90) return 'A';
        return 'B';
    }


    public boolean compare(char a, char b) {
        if (Character.compare(a, b) == 0) return true;
        return false;
    }

    public String toString(String a, String b) {
        return a + "," + b;
    }
}