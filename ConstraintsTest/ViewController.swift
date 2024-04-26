//
//  ViewController.swift
//  ConstraintsTest
//
//  Created by Дмитро Солоп on 25.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 60
        redLight.backgroundColor = .red.withAlphaComponent(1)
        yellowLight.layer.cornerRadius = 60
        yellowLight.backgroundColor = .yellow.withAlphaComponent(0.1)
        greenLight.layer.cornerRadius = 60
        greenLight.backgroundColor = .green.withAlphaComponent(0.1)
        switchButton.setTitle("Start", for: .normal)
        switchButton.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        switchButton.layer.cornerRadius = 10
    }
    func turnRed() {
        redLight.backgroundColor = .red.withAlphaComponent(1)
        yellowLight.backgroundColor = .yellow.withAlphaComponent(0.1)
        greenLight.backgroundColor = .green.withAlphaComponent(0.1)
        switchButton.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    }
    func turnYellow() {
        redLight.backgroundColor = .red.withAlphaComponent(0.1)
        yellowLight.backgroundColor = .yellow.withAlphaComponent(1)
        greenLight.backgroundColor = .green.withAlphaComponent(0.1)
        switchButton.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        switchButton.setTitle("Next", for: .normal)

    }
    func turnGreen() {
        redLight.backgroundColor = .red.withAlphaComponent(0.1)
        yellowLight.backgroundColor = .yellow.withAlphaComponent(0.1)
        greenLight.backgroundColor = .green.withAlphaComponent(1)
        switchButton.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        switchButton.setTitle("Next", for: .normal)
    }
    @IBAction func toggleLights() {
        if redLight.backgroundColor == .red.withAlphaComponent(1){
            turnYellow()
        } else if yellowLight.backgroundColor == .yellow.withAlphaComponent(1){
            turnGreen()
        } else {
            turnRed()
        }
        
    }

}

