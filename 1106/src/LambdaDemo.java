//람다 표현식 Java 1.8에서 새로 나옴.( == 1.8이상 가능)
/*
 * Functuinal Interface : 추상메소드가 한개만 있는 interface 
 */
public class LambdaDemo {
	public static void main(String[] args) {//람다 기본 표현법
		/*Thread t = new Thread(() -> System.out.println(Thread.currentThread().getName() + " -->"));
		t.start();*/
		Student jimin = new Student();
		jimin.say(new Hello() {
			@Override
			public void saySomething() {
				System.out.println("Hello, World!!!!");
			}
		});
	}
}

@FunctionalInterface
interface Hello{
	void saySomething(); //return이 void이고 parameter가 없는 method
}
class Student{
	public void say(Hello hello) {
		hello.saySomething();
	}
}




//@FunctionalInterface
//interface Test{
//	void add(int a , int b);
//	void subtract(int a, int b);
//}