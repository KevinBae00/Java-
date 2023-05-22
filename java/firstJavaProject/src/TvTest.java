public class TvTest {
    public static void main(String[] args) {
        Tv t1 = new Tv(); // 객체생성

        // 기본값
        System.out.println(t1.channel);
        System.out.println(t1.power);
        System.out.println(t1.color);

        t1.channel = 7;
        t1.power = true;
        t1.color = "black";

        System.out.println(t1.channel);
        System.out.println(t1.power);
        System.out.println(t1.color);

        t1.channelUp();
        System.out.println(t1.channel);

        Tv t2 = new Tv();
    }
}
