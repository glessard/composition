//
//  composition.swift
//
//  Created by Guillaume Lessard on 15-10-29.
//  Copyright © 2015 Guillaume Lessard. All rights reserved.
//

infix operator • { associativity left precedence 90}

func • <A,B> (operand: A, transform: A -> B) -> B
{
  return transform(operand)
}

func • <A,B,C> (functionA: A -> B, functionB: B -> C) -> A -> C
{
  return { functionB(functionA($0)) }
}
