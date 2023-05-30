package starcraft;

public abstract class Unit {
    int x, y, z;

    abstract void move(int x, int y);

    void stop() {
    }
}
