//
//  FlashcardsModel.swift
//  FlashcardsWithModel
//
//  Created by Jonah Lukin on 1/30/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import Foundation

class FlashcardsModel {
	
	var currentQuestionIndex = -1
	
	var questions = ["How much is 7+7?", "In what country is Timbuktu", "What rotates when you ride a bike?", "Who was the 44th President of the US?", "Solve for x: 2x - 1 = 5", "Wheat animal is it the year of in the Chinese Calendar? (2020)"]
	
	var answers = ["14", "Mali", "Wheels", "Barack Obama", "x = 2", "Year of the Rat"]
	
	var questionClicked = false
	
	init() {
		
		//Constructor Code here
		
	}
	
	func getNextQuestion() -> String {
		
		questionClicked = true
		
		currentQuestionIndex = currentQuestionIndex + 1
		
		if (currentQuestionIndex >= questions.count) {
			
			currentQuestionIndex = 0
			
		}
		return questions[currentQuestionIndex]
	}
	
	func getAnswer() -> String {
		
		if(questionClicked) {
		
		return answers[currentQuestionIndex]
			
		} else {
			
			return ""
			
		}
		
	}
}
