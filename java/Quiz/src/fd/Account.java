package fd;

public class Account {

    private String ano;
    private String owner;
    private int balance;

    public Account(String ano, String owner, int balance) {
        this.ano = ano;
        this.owner = owner;
        this.balance = balance;
    }

    // getter / setter 메소드 완성하기


    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        // 계좌목록 출력 코드 완성 하기
        return ano + "\t" + owner + "\t" + balance;
    }

    @Override
    public boolean equals(Object obj) {
        // 코드완성 하기
        if (this == obj) return true;
        if (obj instanceof String) {
            String ano = (String) obj;
            if (this.ano.equals(ano)) return true;
        }
        return false;
    }

    @Override
    public int hashCode() {

        // 코드완성 하기
        return balance * ano.hashCode() * owner.hashCode();
    }


}

		