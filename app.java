class App {
  public static void main(String[] args) {
    System.out.println("Hello World");
    String firstname = "Erin";
    String lastname = "Lee";
    String name = "Erin Lee";
    String username = "erinleee";
    int number = 3*3;
    double d =1.0;
    boolean b = true;
    //TYPECASTING
    //int to string!
    int num = 123;
    Integer.toString(num);
    //string to int
    String str = "123";
    Integer.parseInt(str);
    System.out.println(name + " " + firstname + " " + lastname + " " + username + " " + number + " " + num + " " +str);

  }
}

public class YourClass {
    public static void main(String[] args) {
      String item = args[0];
      String years = args[1];
      Integer.parseInt(years);

        String sentence = "The total amount you would be paying for the " + " after " +
        "years with a loan of " + " and an interest rate of " + " would be
        $#{total} and the interest is $#{remainder}.";

    }
}
