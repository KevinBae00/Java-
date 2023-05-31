package javalanhProject;

public class StringTest {
    public static void main(String[] args) {
        int score = 90;
        System.out.println(score + 100);

//        valuesOf()

        String s = String.valueOf(score); // "90"
        System.out.println(s + 100);

//        equals()

//        charAt()

        String string = "abcdef";
        System.out.println(string.charAt(2));

//        length()
        System.out.println(string.length());

        String str = "Hello My Name is Hong Gil Dong";
        System.out.println(str.indexOf("Hong"));
        System.out.println(str.charAt(17));
    }
}
