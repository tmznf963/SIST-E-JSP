/*
 * Functional Interface : �߻�޼ҵ尡 �Ѱ��� �ִ� interface
 */
public class LambdaDemo1 {
	public static void main(String[] args) {
		Student1 jimin = new Student1();   
		jimin.say(() -> {return "Hello, Jimin"; });
	}
}

@FunctionalInterface
interface Hello1{
	String saySomething();   //return�� �ְ� parameter�� ���� method
}

class Student1{
	public void say(Hello1 hello) {
		String word = hello.saySomething();
		System.out.println(word);
	}
}