//
//  SecondViewController.swift
//  i_02_05_2020_RadioApp
//
//  Created by Jasper Cruz on 2/5/20.
//  Copyright © 2020 Jasper Cruz. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {

    @IBOutlet weak var picture2: UIImageView!
   
    @IBOutlet weak var playButton2: UIButton!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var dataFromFirst: String = ""
    var radio: AVPlayer?
    var radioURL: URL?
    var radioOn: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    radioURL = URL(string: "http://stream.omgkpop.com:8234/stream")
        
    radio = AVPlayer(url: radioURL!)
        
    radioOn = false
        
    picture2.image = UIImage(named:"3")
        
    displayLabel.text = dataFromFirst
        
    }
    

    @IBAction func buttonPressed2(_ sender: Any) {
        if radioOn! {
        radioOn = false
        radio!.pause()
        picture2.image = UIImage(named:"3")
        } else {
        radioOn = true
        radio!.play()
        picture2.image = UIImage(named: "4")
        }
        }
    
    @IBAction func goToButtonPressed2(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
    
