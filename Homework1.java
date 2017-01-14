
public class Homework1 {
    public static void main(String[] args) {
      String item = args[0];
      double price = Double.parseDouble(args[1]);
      int time = Integer.parseInt(args[2]);
      int interest = 5 + (int)(Math.random() * ((15) + 1));
      double total = Math.round((Math.pow(((interest + 100.0)/100.0) , time) * price)*100)/100d;
      //System.out.printf("%.2f", total);
      double remainder = Math.round((total - price)*100)/100d;
      System.out.println("The " + item + " with a loan of " + price + " after "
      + time + " years with a rate of " + interest + "% will cost " + total +
      " with an interest of " + remainder);

    }
}
