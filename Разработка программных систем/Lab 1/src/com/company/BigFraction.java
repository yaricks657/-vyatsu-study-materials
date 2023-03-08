package com.company;

import java.math.BigInteger;

/**
 * Class for working with fractional arithmetic
 * @author Yaroslav Kudyashev
 * @version 1.0
 */
public class BigFraction {

    /**
     * Variables for input and output values
     */
    BigInteger numerator = BigInteger.valueOf(788);
    BigInteger denominator = BigInteger.valueOf(788);

    public static BigFraction answer = new BigFraction(BigInteger.ONE, BigInteger.ONE);

    // public BigFraction arg1 =

    /**
     * Constructor for input values
     * @param numerator Numerator of the first fraction
     * @param denominator Denominator of the first fraction
     */
    public BigFraction(BigInteger numerator, BigInteger denominator) {
        this.numerator = numerator;
        this.denominator = denominator;
    }

    /**
     * Method toString for correct representation of class instances
     * @return String with input values and result
     */
    public String toString() {
        return "The first operator is " + Main.arg1.numerator + "/" + Main.arg1.denominator +
                "\nThe second operator is " + Main.arg2.numerator + "/" + Main.arg2.denominator +
                "\nThe answer is " + answer.numerator + "/" + answer.denominator;
    }

    /**
     * Function for adding two fractions
     * @param arg1 Numerator and denominator of two fractions
     * @return Result of adding two fractions (numerator and denominator) + initial values of the arg parameter
     */
    public BigFraction Addition(BigFraction arg1) {
        answer.numerator = (arg1.numerator.multiply(Main.arg2.denominator)).add(Main.arg2.numerator.multiply(arg1.denominator));
        answer.denominator = arg1.denominator.multiply(Main.arg2.denominator);
        BigFraction last_answer = new BigFraction(answer.numerator, answer.denominator);
        last_answer = Reduction(last_answer);
        return last_answer;
    }

    /**
     * Function for subtracting two fractions
     * @param arg1 Numerator and denominator of two fractions
     * @return Result of subtracting two fractions (numerator and denominator) + initial values of the arg parameter
     */
    public BigFraction Subtraction(BigFraction arg1) {
        answer.numerator = (arg1.numerator.multiply(Main.arg2.denominator)).subtract(Main.arg2.numerator.multiply(arg1.denominator));
        answer.denominator = arg1.denominator.multiply(Main.arg2.denominator);
        BigFraction last_answer = new BigFraction(answer.numerator, answer.denominator);
        last_answer = Reduction(last_answer);
        return last_answer;
    }


    /**
     * Function for multiplication two fractions
     * @param arg Numerator and denominator of two fractions
     * @return Result of multiplication two fractions (numerator and denominator) + initial values of the arg parameter
     */
    public BigFraction Multiplication(BigFraction arg) {
        answer.numerator = arg.numerator.multiply(Main.arg2.numerator);
        answer.denominator = arg.denominator.multiply(Main.arg2.denominator);
        BigFraction last_answer = new BigFraction(answer.numerator, answer.numerator);
        last_answer = Reduction(last_answer);
        return last_answer;
    }

    /**
     * Function for division two fractions
     * @param arg Numerator and denominator of two fractions
     * @return Result of division two fractions (numerator and denominator) + initial values of the arg parameter
     */
    public BigFraction Division(BigFraction arg) {
        answer.numerator = arg.numerator.multiply(Main.arg2.denominator);
        answer.denominator = arg.denominator.multiply(Main.arg2.numerator);
        BigFraction last_answer = new BigFraction(answer.numerator, answer.denominator);
        last_answer = Reduction(last_answer);
        return last_answer;
    }

    /**
     * Finding the maximum common divider
     * @param numerator Numerator of the number
     * @param denominator Denominator of the number
     * @return Maximum common divider
     */
    private BigInteger Checker(BigInteger numerator, BigInteger denominator) {

        /**
         * Variable for compare
         */
        int compare = denominator.compareTo(numerator);

        while (compare !=0) {
        compare =  denominator.compareTo(numerator);
            if (compare==1) denominator = denominator.subtract(numerator);
            else numerator = numerator.subtract(denominator);
        }
        return denominator;
    }

    /**
     * Function for reducing fractions
     * @param arg Numerator and denominator of two fractions
     * @return Reduced numerators and denominators of operands and result
     */
    public BigFraction Reduction(BigFraction arg) {
        /**
         * Variable for additional calculations
         */
        BigInteger dop;

      /*  dop = Checker(numerator_1, denominator_1);
        numerator_1 = numerator_1 / dop;
        denominator_1 = denominator_1 / dop;

        dop = Checker(numerator_2, denominator_2);
        numerator_2 = numerator_2 / dop;
        denominator_2 = denominator_2 / dop;*/

        dop = Checker(answer.numerator, answer.denominator);
        answer.numerator = answer.numerator.divide(dop);
        answer.denominator = answer.denominator.divide(dop);

        return answer;
    }
}
