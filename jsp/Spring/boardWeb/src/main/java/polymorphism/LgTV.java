package polymorphism;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("tv") // 스프링에 제공하는 클래스는 적용 불과(<bean>등록 가능)
public class LgTV implements TV {
    @Autowired
    @Qualifier("apple")
    private Speaker speaker;
//    private Speaker speaker = new SonySpeaker와 같다.

    @Override
    public void powerOn() {
        System.out.println("LgTV---전원 켠다.");
    }

    @Override
    public void powerOff() {
        System.out.println("LgTV---전원 끈다.");
    }

    @Override
    public void volumeUp() {
        System.out.println("LgTV---소리 올린다.");
    }

    @Override
    public void volumeDown() {
        System.out.println("LgTV---소리 내린다.");
    }
}
