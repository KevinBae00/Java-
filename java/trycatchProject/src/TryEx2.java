public class TryEx2 {
    void first() throws Exception {

        second();

    }

    void second() throws Exception {
        throw new Exception();
    }
}