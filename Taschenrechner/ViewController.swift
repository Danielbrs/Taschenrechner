//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Daniel Boros / BBS2H20A on 23.08.21.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var ausgabefeld: UILabel!
    var nummerEingeben = false
    var ersteZahl = 0
    var zweiteZahl = 0
    var operation = " "
    
    
    @IBAction func zahlenButton(_ sender: UIButton) {
        ausgabefeld.text = sender.currentTitle
        let zahl = sender.currentTitle!
        
        if nummerEingeben{
            ausgabefeld.text = ausgabefeld.text! + zahl
        } else{
            ausgabefeld.text = zahl
            nummerEingeben = true
        }
        
    }
    
    
    
    @IBAction func operatorenButton(_ sender: UIButton) {
        nummerEingeben = false
        ersteZahl = Int(ausgabefeld.text!)!
        operation = sender.currentTitle!
        
            }
    
    @IBAction func gleichZeichen(_ sender: UIButton) {
        nummerEingeben = false
        var ergebnis = 0
        zweiteZahl = Int(ausgabefeld.text!)!
        
        if operation == "+"{
            ergebnis = ersteZahl + zweiteZahl
        } else if operation == "-" {
            ergebnis = ersteZahl - zweiteZahl
        } else if operation == "x" {
            ergebnis = ersteZahl * zweiteZahl
        } else if operation == "/" {
            ergebnis = ersteZahl / zweiteZahl
        }
        
        ausgabefeld.text = String(ergebnis)
        
    }
    
    
    @IBAction func kommaButton(_ sender: UIButton) {
    }
    
    
    @IBAction func loeschButton(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

