//
//  QustionText.swift
//  Quizzler
//
//  Created by Ali Elhabal on 3/25/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation
class QustionText {
    
    var TextArr = [QustionModel]()
    
    
    init() {
        let item = QustionModel(Q: "Valentine\'s day is banned in Saudi Arabia.", A: true)
        
        // Add the Question to the list of questions
        TextArr.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        TextArr.append(QustionModel(Q: "A slug\'s blood is green.", A: true))
        
        TextArr.append(QustionModel(Q: "Approximately one quarter of human bones are in the feet.", A: true))
        
        TextArr.append(QustionModel(Q: "The total surface area of two human lungs is approximately 70 square metres.", A: true))
        
        TextArr.append(QustionModel(Q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", A: true))
        
        TextArr.append(QustionModel(Q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", A: false))
        
        TextArr.append(QustionModel(Q: "It is illegal to pee in the Ocean in Portugal.", A: true))
        
        TextArr.append(QustionModel(Q: "You can lead a cow down stairs but not up stairs.", A: false))
        
        TextArr.append(QustionModel(Q: "Google was originally called \"Backrub\".", A: true))
        
        TextArr.append(QustionModel(Q: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", A: true))
        
        TextArr.append(QustionModel(Q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", A: false))
        
        TextArr.append(QustionModel(Q: "No piece of square dry paper can be folded in half more than 7 times.", A: false))
        
        TextArr.append(QustionModel(Q: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", A: true))

    }
    
    
    
    
}
