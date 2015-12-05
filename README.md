# Composition
Function composition operator for Swift

See https://wiki.haskell.org/Function_composition or http://mathworld.wolfram.com/Composition.html

Mathematically, this is usually represented by something like: ⸰
That isn't typable on most keyboards, but the bullet is. This package defines •, which is typable on most macs (option-8).

It is defined as follows:
```
infix operator • { associativity left precedence 90}

func • <A,B> (operand: A, transform: A -> B) -> B
{
  return transform(operand)
}

func • <A,B,C> (functionA: A -> B, functionB: B -> C) -> A -> C
{
  return { functionB(functionA($0)) }
}
```
