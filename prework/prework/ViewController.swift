//
//  ViewController.swift
//  prework
//
//  Created by Kamila on 8/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appNameTextField: UITextField!
    @IBOutlet weak var appVersionTextField: UITextField!
    @IBOutlet weak var appDateTextField: UITextField!
    @IBOutlet weak var languageSegment: UISegmentedControl!
    @IBOutlet weak var hoursSpentLabel: UILabel!
    @IBOutlet weak var hoursSpentStepper: UIStepper!
    
    @IBOutlet weak var isBetaSwitch: UISwitch!
    @IBAction func stepperChanged(_ sender: UIStepper) {
        hoursSpentLabel.text = "\(Int(sender.value))"
    }
    @IBAction func doneTapped(_ sender: UIButton) {
        let language = languageSegment.titleForSegment(at: languageSegment.selectedSegmentIndex)
        let appDesc = "\(appNameTextField.text!), Version \(appVersionTextField.text!), is a mobile application on App Store. The app was created on \(appDateTextField.text!). Our codebase is in \(language!), and we spent \(hoursSpentLabel.text!) hours creating the app. It is \(isBetaSwitch.isOn) that this is a beta version. Enjoy!"
        let alertController = UIAlertController(title: "App Description", message: appDesc, preferredStyle: .alert)
        let action = UIAlertAction(title: "GET", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

