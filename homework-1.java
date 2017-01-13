
public class Homework1 {
    public static void main(String[] args) {
      String item = args[0];
      String price = args[1];
      Integer.parseInt(price);
      String time = args[2];
      Integer.parseInt(time);
      int interest = 5 + (int)(Math.random() * ((15) + 1));
      Integer.parseInt(interest);
      int total = ((interest*time + 100.0)/100.0) * price;
      int remainder = total - price;
      System.out.println("The " + item + " with a loan of " + price + " after "
      + time + " with a rate of " + interest + " will cost " + total +
      "with an interest of " + remainder);

    }
}
