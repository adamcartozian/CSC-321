// Adam Cartozian

import java.util.Scanner;

public class palindrome{
    public static boolean isPalindrome(String in){
        String lowercasestring = in.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
        int left = 0;
        int right = lowercasestring.length()-1;
        
        while(left < right){
            if(lowercasestring.charAt(left) != lowercasestring.charAt(right)){
                return false;
            }
            left++;
            right--;
        }
        
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String input = scanner.nextLine();
        
        if (isPalindrome(input)) {
            System.out.println("TRUE");
        } else {
            System.out.println("FALSE");
        }
        
        scanner.close();
    }
}