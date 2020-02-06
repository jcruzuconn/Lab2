//
//  ViewController.swift
//  i_02_05_2020_RadioApp
//
//  Created by Jasper Cruz on 2/5/20.
//  Copyright © 2020 Jasper Cruz. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var playButton1: UIButton!
    @IBOutlet weak var picture1: UIImageView!
    var radio: AVPlayer?
    var radioURL: URL?
    var radioOn: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        radioURL = URL(string: "http://shoutcast.dribb.com:2199/tunein/kpop192.pls")
        
        radio = AVPlayer(url: radioURL!)
        
        radioOn = false
        
        picture1.image = UIImage(named:"1")
    
    }
    @IBAction func buttonPressed1(_ sender: Any) {
            if radioOn! {
            radioOn = false
            radio!.pause()
            picture1.image = UIImage(named:"1")
            } else {
            radioOn = true
            radio!.play()
            picture1.image = UIImage(named: "2")
            }
            }
        
    @IBAction func goToButtonPressed1(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let destVC : SecondViewController = segue.destination as! SecondViewController
       destVC.dataFromFirst = "This is data from the first VC!"
    }
    
    override func viewWillAppear(_ animated: Bool)
    {   super.viewWillAppear(true)
        print("viewWillAppear is running");
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear is running");
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDisappear is running");
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear is running");
        
    }
    
    
    
    
}
