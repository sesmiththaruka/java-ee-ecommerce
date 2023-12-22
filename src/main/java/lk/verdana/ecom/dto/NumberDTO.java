package lk.verdana.ecom.dto;

public class NumberDTO {
    private int number;
    private int number1;
    private int number2;

    public NumberDTO() {
    }

    public NumberDTO(int number) {
        this.number = number;
    }

    public NumberDTO(int number, int number1, int number2) {
        this.number = number;
        this.number1 = number1;
        this.number2 = number2;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getNumber1() {
        return number1;
    }

    public void setNumber1(int number1) {
        this.number1 = number1;
    }

    public int getNumber2() {
        return number2;
    }

    public void setNumber2(int number2) {
        this.number2 = number2;
    }
}
