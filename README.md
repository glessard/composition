# Composition
Function composition operator for Swift

See https://wiki.haskell.org/Function_composition or http://mathworld.wolfram.com/Composition.html

This is usually represented in math by something like ⸰

That is difficult to type on most keyboards, but the bullet is fairly easy.

This package defines •, which is typable on most macs (option-8).

It is defined as follows:
```
infix operator • { associativity left precedence 90}

public func • <A,B,C> (functionA: A -> B, functionB: B -> C) -> A -> C
{
  return { functionB(functionA($0)) }
}
```
