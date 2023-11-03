import A "canister:A";

actor {

  public func greet() : async Text {
    if false await A.greet() else "hello from B"
  }

}