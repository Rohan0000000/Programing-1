import java.util.Scanner;
public class encoder {
	public static void main( String[] args) {
		Scanner scanner = new Scanner( System.in);
		System.out.println("What's your message?");
		String message = scanner.nextLine();
		System.out.println("What's the key?");
		int key = scanner.nextInt();
		String encoded="";
		for(int k =0; k<message.length();k++) {
			char letter = message.charAt(k);
			char encodedLetter = (char)(letter+key);
			encoded+= encodedLetter;
		}
		System.out.println(encoded);
		scanner.close();
	}

}
