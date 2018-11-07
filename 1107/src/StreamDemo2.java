import java.util.Arrays;
import java.util.OptionalInt;

public class StreamDemo2 {
	public static void main(String[] args) {
		// List<Integer> list = Arrays.asList(7,5,1,2,6,3,8,9);
		// List<String> list2 =
		// Arrays.asList("Java-JDK1.8","Python-Python3.7","Oracle-Oracle12.2");
		// list.stream().distinct().forEach(System.out::println);
		// list.stream().filter(n -> n % 2 ==0).forEach(System.out::println);
		// list.stream().map(x -> x*x).forEach(System.out::println);
		// list2.stream().flatMap(data ->
		// Arrays.stream(data.split("-"))).forEach(System.out::println);

//		List<Student> list = Arrays.asList(s1,s2,s3);
//		list.stream().mapToInt(Student::getAge).forEach(System.out::println);

		/*
		 * IntStream is = Arrays.stream(new int[] {1,2,3,4,5});
		 * is.asDoubleStream().forEach(System.out::println);
		 */

//		Student s1 = new Student("이미자",66);
//		Student s2 = new Student("한지민",44);
//		Student s3 = new Student("설운도",34);
//			
//		List<Student> list = Arrays.asList(s1,s2,s3);
//		Function <Student, Integer> fun = Student::getAge;
//		list.stream().sorted(Comparator.comparing(fun)).forEach(System.out::println);
		// Integer [] array = new Integer[] {5,1,8,2,9,2,4};
		// List<Integer> list = Arrays.asList(array);
		// list.stream().sorted().forEach(System.out::println);
		// list.stream().filter(n -> n % 2 == 0).forEach(System.out::println);//최종연산
		// list.stream().filter(n -> n % 3 ==0).peek(n -> System.out.println(n));//중간연산
		// int total = list.stream().filter(n -> n % 2 == 0).sum();
//	   	int total = Arrays.stream(array).filter(n -> n % 2 == 0).peek(System.out::println).sum();
//		System.out.println("total = "+total);
//		int [] array = {5,1,8,2,9,2,4};
//		System.out.println(Arrays.stream(array).average());
		// List<Integer> list = Arrays.asList(new Integer[] {1,2,3,4,5});
		// System.out.println(list.stream().count());
//		Arrays.stream(new int[] {3,4,5,6,7}).average().getAsDouble();
//		System.out.println();
			
			//Exception 발생 해결방법
			OptionalInt oi = Arrays.stream(new int[] {1,2,3,4,5}).max();
//			if(oi.isPresent()) {//값이 있으면
//				System.out.println(oi.getAsInt());
//			}else {
//				System.out.println("Nothing");
//			}
			
			//System.out.println(oi.orElse(0));//값이 없으면 0을 찍어라[default value]
			oi.ifPresent(System.out::println);//값이 있으면 출력

	}
}
