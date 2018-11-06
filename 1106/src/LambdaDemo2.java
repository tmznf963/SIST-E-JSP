/*
 * Functional Interface : �߻�޼ҵ尡 �Ѱ��� �ִ� interface
 */
public class LambdaDemo2 {
	public static void main(String[] args) {
		Calculator c = new Calculator();
		c.display((a, b) -> { return a + b; } );
	}
}

@FunctionalInterface
interface Calc{
	int add(int a, int b);//return�� �ְ�, parameter�� �ִ� �߻� �޼ҵ�
}
class Calculator{
	public void display(Calc calc) {
		int answer = calc.add(10,  5);
		System.out.println("Answer = " + answer);
	}
}