package interf;

public class Complexer implements Printer, Scanner, Fax {
    @Override
    public void send(String tel) {
        System.out.println(FAX_NUMBER + " 팩스전송");
    }

    @Override
    public void receive(String tel) {
        System.out.println("팩스받기 " + FAX_NUMBER);
    }

    @Override
    public void print() {
        System.out.println("결과 출력");
    }

    @Override
    public void scan() {
        System.out.println("이미지 복사");
    }
}
