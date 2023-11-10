//
//  main.swift
//  RandomBingo
//
//  Created by ProCG on 2023/11/10.
//

import Foundation

var comChoice: Int = Int.random(in: 1...100)

getClientNumber();


func getClientNumber() -> Void {
    var clientChoice: Int = 0
    let clientInput = readLine()
    if let clientNumber = clientInput {
        if let number = Int(clientNumber){
            clientChoice = number
        }
    }
    judge(clientChoice: clientChoice)

}


func judge(clientChoice: Int ) -> Void {
    if(clientChoice < comChoice){
        print("UP")
        getClientNumber()
    } else if(clientChoice > comChoice){
        print("DOWN")
        getClientNumber()
    }else{
        print( "CORRECT")
    }
}


