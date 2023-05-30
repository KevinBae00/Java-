package starcraft;

public class Marine extends Unit {
    void stimPack() {
    }

    @Override
    void move(int x, int y) {
        if (!((x >= 100 && x <= 200) || (y >= 100 && y <= 200))) {
            System.out.println("Marine이 이동합니다.");
        } else {
            System.out.println("현재 위치는 이동이 불가합니다.");
        }
    }
}
