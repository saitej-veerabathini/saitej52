//
//  GameViewController.swift
//  Veerabathini_DiceGame
//
//  Created by Veerabathini,Saitej on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var player1LabelOutlet: UILabel!
    @IBOutlet weak var player2LabelOutlet: UILabel!
    
    @IBOutlet weak var player1CurrentLabel: UILabel!
    
    @IBOutlet weak var player2CurrentLabel: UILabel!
    
    @IBOutlet weak var rollDiceButtonOutlet: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player1LabelOutlet.text! = "Total number of games \(player1) won : \(won1)"
        player2LabelOutlet.text! = "Total number of games \(player2) won : \(won2)"
        player1CurrentLabel.text! = "\(player1) current score: \(number1)"
        player2CurrentLabel.text! = "\(player2) current score: \(number2)"
        imageView.image = UIImage(named: "play")
        
    }
    
    var player1 = ""
    var player2 = ""

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    var number1 = 0
    var number2 = 0
    var won1 = 0
    var won2 = 0
    var imageNumber = 0
    @IBAction func rollDiceGameClicked(_ sender: UIButton) {
        number1 = Int.random(in: 1..<6)
        number2 = Int.random(in: 1..<6)
        if number1>number2{
            won1+=1
            imageNumber = number1
        }
        else{
            won2+=1
            imageNumber = number2
        }
        
        player1CurrentLabel.text! = "\(player1) current score: \(number1)"
        player2CurrentLabel.text! = "\(player2) current score: \(number2)"
        player1LabelOutlet.text! = "Total number of games \(player1) won : \(won1)"
        player2LabelOutlet.text! = "Total number of games \(player2) won : \(won2)"
        
        if number1==number2{
            imageView.image = UIImage(named: "tie")
        }
        else{
            
        
        
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "dice1")

        case 2:
            imageView.image = UIImage(named: "dice2")
            
        case 3:
            imageView.image = UIImage(named: "dice3")
            
        case 4:
            imageView.image = UIImage(named: "dice4")
            
        case 5:
            imageView.image = UIImage(named: "dice5")
            
        case 6:
            imageView.image = UIImage(named: "dice6")

        default:
            print("Have you done something new?")
        }
        }
    }
    
    
    
}
