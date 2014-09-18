//
//  MonsterAttack.swift
//  GottaCodeEmAll
//
//  Created by Dion Larson on 9/17/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

enum MonsterAttackType {
  case Tackle, Swipe, Elemental, None
}

class MonsterAttack {
  var attack = MonsterAttackType.None
  var numberOfTimes = 0 // only relevant for swipe
  
  func resetAttack() {
    attack = MonsterAttackType.None
    numberOfTimes = 0
  }
  
  func tackle() {
    resetAttack()
    attack = MonsterAttackType.Tackle
  }
  
  func swipe() {
    if attack != MonsterAttackType.Swipe {
      resetAttack()
      attack = MonsterAttackType.Swipe
    }
    numberOfTimes++
    
    if numberOfTimes > 5 {
      // handle cheating?
    }
  }
  
  func elemental() {
    resetAttack()
    attack = MonsterAttackType.Elemental
  }
}