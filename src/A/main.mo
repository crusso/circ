import B "canister:B";

actor {

  public func greet() : async Text {
    if false await B.greet() else "hello from A";
  }

}