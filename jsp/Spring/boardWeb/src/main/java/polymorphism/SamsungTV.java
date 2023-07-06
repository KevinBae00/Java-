package polymorphism;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SamsungTV implements TV {

    private Speaker speaker;
    //    SamsungTv가 Speaker에 의존한다. (SamsungTv < SonySpeaker)
    private int price;

    public SamsungTV() {
        System.out.println("===> SamsungTV(1) 객체 생성");
    }

//    public SamsungTV(Speaker speaker) {
//        System.out.println("===> SamsungTV(2) 객체 생성");
//        this.speaker = speaker;
//    }
//
//    public SamsungTV(Speaker speaker, int price) {
//        System.out.println("===> SamsungTV(3) 객체 생성");
//        this.speaker = speaker;
//        this.price = price;
//    }

    public void powerOn() {
        System.out.println("SamsungTV---전원 켠다.(가격: " + price + ")");
    }

    public void powerOff() {
        System.out.println("SamsungTV---전원 끈다.");
    }

    public void volumeUp() {
        speaker.volumeUp();
    }

    public void volumeDown() {
        speaker.volumeDown();
    }
}
