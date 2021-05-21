//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Andrew Tam on 6/29/20.
//  Copyright © 2020 Andrew Tam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UserChoice: UIImageView!
    @IBOutlet weak var CPUChoice: UIImageView!
    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var userScore = 0
    var cpuScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rockButton(_ sender: UIButton) {
        UserChoice.image = UIImage(named: "rock")
        var compChoice = generateComputerChoice()
        if generateComputerChoice() == 0{
            CPUChoice.image = UIImage(named: "rock")
            resultLabel.text = "Rock Ties Rock! It's a Draw!"
        }
      else if generateComputerChoice() == 1{
                  CPUChoice.image = UIImage(named: "paper")
                  cpuScore = cpuScore + 1
                  cpuScoreLabel.text = cpuScore.description
                  resultLabel.text = "Rock Loses to Paper! CPU wins!"
                  
              }
       else if generateComputerChoice() == 2{
                  CPUChoice.image = UIImage(named: "scissors")
                  userScore = userScore + 1
            userScoreLabel.text = userScore.description
                  resultLabel.text = "Rock crushes Scissors! You Win!"
              }
            
        
    }
    @IBAction func paperButton(_ sender: UIButton) {
        UserChoice.image = UIImage(named: "paper")
          var compChoice = generateComputerChoice()
          if compChoice == 0{
              CPUChoice.image = UIImage(named: "rock")
              userScore+=1
            userScoreLabel.text = userScore.description
              resultLabel.text = "Paper Covers Rock! You Win!"
          }
        else if compChoice == 1{
                    CPUChoice.image = UIImage(named: "paper")
                    resultLabel.text = "Paper Ties Paper! Its a Draw!"
                    
                }
         else if compChoice == 2{
                    CPUChoice.image = UIImage(named: "scissors")
                    cpuScore+=1
                    cpuScoreLabel.text = cpuScore.description
                    resultLabel.text = "Paper gets Cut by Scissors! CPU Wins!"
                }
              
    }
    @IBAction func scissorButton(_ sender: UIButton) {
        UserChoice.image = UIImage(named: "scissors")
          var compChoice = generateComputerChoice()
          if compChoice == 0{
              CPUChoice.image = UIImage(named: "rock")
              cpuScore+=1
           cpuScoreLabel.text = cpuScore.description
              resultLabel.text = "Scissors gets Crushed by Rock! CPU wins!"
          }
        else if compChoice == 1{
                    CPUChoice.image = UIImage(named: "paper")
                    userScore+=1
                    userScoreLabel.text = userScore.description
                    resultLabel.text = "Scissors Cuts Paper! You Win!"
                    
                }
         else if compChoice == 2{
                    CPUChoice.image = UIImage(named: "scissors")
                    
                    resultLabel.text = "Scissors Ties Scissors! It's a Draw!"
                }
    }
    func generateComputerChoice() -> Int{
        let computerChoice = Int(arc4random_uniform(3))
        return computerChoice
    }
    
    @IBAction func resetButton(_ sender: Any) {
        userScoreLabel.text = "0"
        cpuScoreLabel.text = "0"
        userScore = 0
        cpuScore = 0
        resultLabel.text = ""
    }
    
}

