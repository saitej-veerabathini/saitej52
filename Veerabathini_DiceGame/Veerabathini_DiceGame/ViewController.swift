//
//  ViewController.swift
//  Veerabathini_DiceGame
//
//  Created by Veerabathini,Saitej on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1Outlet: UITextField!
    
    @IBOutlet weak var player2Outlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var player1 = ""
    var player2 = ""
    
    @IBAction func playDiceGameClicked(_ sender: Any) {
        player1 = player1Outlet.text!
        player2 = player2Outlet.text!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue"{
            //make ResultViewController
            var destination = segue.destination as! GameViewController
            destination.player1 = player1Outlet.text!
            destination.player2 = player2Outlet.text!
            
        }
    }
}

