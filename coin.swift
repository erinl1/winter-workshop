//1-100
import Foundation

var x: Int? = Int(arc4random_uniform(100) + 1)
if x == 1 {
  print("penny")
}
else if x == 5 {
  print("nickel")
}
else if x == 10 {
  print("dime")
}
else if x == 25 {
  print("quarter")
}
else {
  print("no coin")
  print(x!)
}
