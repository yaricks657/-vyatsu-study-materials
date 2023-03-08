package com.company;

import java.math.BigInteger;
import java.util.Scanner;

/**
 * Main class
 * @author Yaroslav Kudyashev
 * @version 1.0
 */
public class Main {

    /**
     *  Flag to exit the menu
     */
    public static boolean menu_element = false;

    /**
     * Flags to indicate the input of the numerator and denominator
     */
    public static boolean numerator_flag = false, denominator_flag = false;

    /**
     * Flag for dividing by 0
     */
    public static boolean flag_division = false;

    /**
     * Class variable for the first argument
     */
    public static BigFraction arg1 = new BigFraction(BigInteger.ONE, BigInteger.ONE);

    /**
     * Class variable for the second argument
     */
    public static BigFraction arg2 = new BigFraction(BigInteger.ONE, BigInteger.ONE);


    /**
     * Menu implementation for working with fractions
     * @param args Common parameters
     */
    public static void main(String[] args) {
        while (menu_element != true) {
            System.out.println("Use 'help' for reference.");
            System.out.println("Enter the command:");
            Scanner in = new Scanner(System.in);
            String element = in.nextLine();

            switch (element) {

                /**
                 * List of menu functions
                 */
                case "Help":
                    System.out.println("1. Addition");
                    System.out.println("2. Subtraction");
                    System.out.println("3. Multiplication");
                    System.out.println("4. Division");
                    System.out.println("5. Exit");
                    break;

                /**
                 * @see BigFraction#Addition(BigFraction)
                 */
                case "Addition":
                    menu_minimization();
                    BigFraction.answer = arg1.Addition(arg1);
                    System.out.println(BigFraction.answer);
                    break;

                /**
                 * @see BigFraction#Subtraction(BigFraction)
                 */
                case "Subtraction":
                    menu_minimization();
                    BigFraction.answer = arg1.Subtraction(arg1);
                    System.out.println(BigFraction.answer);
                    break;

                /**
                 * @see BigFraction#Multiplication(BigFraction)
                 */
                case "Multiplication":
                    menu_minimization();
                    BigFraction.answer = arg1.Multiplication(arg1);
                    System.out.println(BigFraction.answer);
                    break;

                /**
                 * @see BigFraction#Division(BigFraction)
                 */
                case "Division":
                    flag_division = true;
                    menu_minimization();
                    BigFraction.answer = arg1.Division(arg1);
                    System.out.println(BigFraction.answer);
                    flag_division = false;
                    break;

                /**
                 * Exit from the program
                 */
                case "Exit":
                    menu_element = true;
                    break;
            }

        }
    }

    /**
     * Input function for code minimization
     */
    public static void menu_minimization() {
        numerator_flag = false;
        denominator_flag = false;
        input_numerator(1);
        numerator_flag = false;
        denominator_flag = false;
        input_numerator(2);
    }

    /**
     * Function for numerator and denominator input
     * @param number Operand number
     * @throws IndexOutOfBoundsException If one of the arguments went beyond 1000000
     * @throws ArithmeticException If any of the denominators is 0 or number is less than 0
     * @throws Exception If input number is not of the int type and all other situations
     */
    public static void input_numerator(int number) {
        try {
            while (numerator_flag == false) {
                System.out.print("Enter the " + number + " numerator: ");
                Scanner first = new Scanner(System.in);

                if (number == 1) {
                    arg1.numerator = first.nextBigInteger();
                } else arg2.numerator = first.nextBigInteger();


                int check1 = arg1.numerator.compareTo(BigInteger.valueOf(1000000));
                int check2 = arg2.numerator.compareTo(BigInteger.valueOf(1000000));
                int check3 = arg1.numerator.compareTo(BigInteger.valueOf(-1000000));
                int check4 = arg2.numerator.compareTo(BigInteger.valueOf(-1000000));
                int check5 = arg1.numerator.compareTo(BigInteger.valueOf(0));
                int check6 = arg2.numerator.compareTo(BigInteger.valueOf(0));

                if (check1 == 1 || check2 == 1) {
                    throw
                        new IndexOutOfBoundsException("Numerator is too big");
                }
                else if (check3 == (-1) || check4 == (-1)) {
                    throw
                        new IndexOutOfBoundsException("Numerator is too small");
                }
                else if (check5 <= 0 || check6 <= 0) throw
                        new ArithmeticException("Entering negative numbers is prohibited");
                else
                    numerator_flag = true;
            }
            while (denominator_flag == false) {
                System.out.print("Enter the " + number + " denominator: ");
                Scanner second = new Scanner(System.in);

                if (number == 1) {
                    arg1.denominator = second.nextBigInteger();
                } else arg2.denominator = second.nextBigInteger();


                int check1 = arg1.denominator.compareTo(BigInteger.valueOf(1000000));
                int check2 = arg2.denominator.compareTo(BigInteger.valueOf(1000000));
                int check3 = arg1.denominator.compareTo(BigInteger.valueOf(-1000000));
                int check4 = arg2.denominator.compareTo(BigInteger.valueOf(-1000000));
                int check5 = arg1.denominator.compareTo(BigInteger.valueOf(0));
                int check6 = arg2.denominator.compareTo(BigInteger.valueOf(0));

                if (check1 == 1 || check2 > 1) {
                    throw
                            new IndexOutOfBoundsException("Denominator is too big");
                }
                else if (check3 == (-1) || check4 == (-1)){
                    throw
                        new IndexOutOfBoundsException("Denominator is too small");
                }
                else if (check5 == 0 || check6 == 0) throw
                        new ArithmeticException("Denominator cannot be 0");
                else if (number == 2 && flag_division == true && check5 == 0) throw
                        new ArithmeticException("Denominator cannot be 0");
                else if (check5 <= 0 || check6 <= 0) throw
                        new ArithmeticException("Entering negative numbers is prohibited");
                else
                    denominator_flag = true;
            }
        } catch (IndexOutOfBoundsException exp) {
            System.out.println(exp);
            input_numerator(number);
        } catch (ArithmeticException exp) {
            System.out.println(exp);
            input_numerator(number);
        } catch (Exception exp) {
            System.out.println("This is not a number or value is too big");
            input_numerator(number);
        }
    }

}
