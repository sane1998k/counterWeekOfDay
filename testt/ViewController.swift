//
//  ViewController.swift
//  testt
//
//  Created by alex on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func showDate() -> String {
        guard let day = Int(dayTF.text!), let month = Int(monthTF.text!), let year = Int(yearTF.text!) else {return "nil"}
        let calendar = Calendar.current
        var dateComponent = DateComponents()
        dateComponent.day = day
        dateComponent.month = month
        dateComponent.year = year
        let date = calendar.date(from: dateComponent)
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "EEEE"
        guard let dateGuard = date else {return "date nil"}
        return dateFormat.string(from: dateGuard)
    }

    @IBAction func countBA(_ sender: UIButton) {
        resultLBL.text! = "Day of week: \(showDate())"
    }
}

