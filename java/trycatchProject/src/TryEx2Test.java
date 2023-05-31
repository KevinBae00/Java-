public class TryEx2Test {
    public static void main(String[] args) {
        TryEx2 tryEx2 = new TryEx2();

        try {
            tryEx2.first();
        } catch (Exception e) {

        } finally {
            System.out.println("프로그램 끝");
        }
    }
}
