//
//  ViewController.swift
//  Counter.ver2
//
//  Created by Miskurov Timur on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    
    @IBOutlet weak var nullButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countTextField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countTextField.text = "История изменений:"
        plusButton.backgroundColor = .red
        plusButton.tintColor = .white
        minusButton.backgroundColor = .blue
        minusButton.tintColor = .white
        nullButton.tintColor = .black
        nullButton.backgroundColor = .systemGray
        
        var formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        
    }
    @IBAction func plusCount() {
        count += 1
        countTextField.text = "История изменений: \(count)"
    }
    
    @IBAction func minusCount() {
        count -= 1
        countTextField.text = "История изменений: \(count)"
    }
    
    
    @IBAction func makeNull() {
        count = 0
        countTextField.text = "Значение сброшено на 0"
    }
}

