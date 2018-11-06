/*
 * Functional Interface : 추상메소드가 한개만 있는 interface
 */
public class LambdaDemo2 {
	public static void main(String[] args) {
		Calculator c = new Calculator();
		c.display((a, b) -> { return a + b; } );
	}
}

@FunctionalInterface
interface Calc{
	int add(int a, int b);//return도 있고, parameter도 있는 추상 메소드
}
class Calculator{
	public void display(Calc calc) {
		int answer = calc.add(10,  5);
		System.out.println("Answer = " + answer);
	}
}