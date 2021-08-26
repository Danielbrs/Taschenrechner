//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Daniel Boros / BBS2H20A on 23.08.21.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var ausgabefeld: UILabel!
    
    
    @IBAction func zahlenButton(_ sender: UIButton) {
        ausgabefeld.text = sender.currentTitle
    }
    
    
    
    @IBAction func operatorenButton(_ sender: UIButton) {
    }
    
    
    
    @IBAction func kommaButton(_ sender: UIButton) {
    }
    
    
    @IBAction func loeschButton(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

