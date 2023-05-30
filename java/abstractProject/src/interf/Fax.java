package interf;

public interface Fax {
    String FAX_NUMBER = "123-456";

    void send(String tel);

    void receive(String tel);
}
