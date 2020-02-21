//
//  composition.swift
//
//  Created by Guillaume Lessard on 15-10-29.
//  Copyright © 2015 Guillaume Lessard. All rights reserved.
//

precedencegroup CompositionPrecedence {
  higherThan: TernaryPrecedence
  associativity: left
  assignment: false
}

infix operator • : CompositionPrecedence

public func • <A,B> (operand: A, transform: (A) -> B) -> B
{
  return transform(operand)
}

public func • <A,B,C> (functionA: @escaping (A) -> B, functionB: @escaping (B) -> C) -> (A) -> C
{
  return { functionB(functionA($0)) }
}
