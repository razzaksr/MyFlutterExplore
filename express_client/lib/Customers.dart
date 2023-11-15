class Customers{
  String accHolder;
  int accNumber;
  double accBalance;
  Customers.named(this.accNumber,this.accHolder,this.accBalance);
  @override
  String toString() {
    // TODO: implement toString
    return "$accNumber name of $accHolder with balance of $accBalance";
  }
}