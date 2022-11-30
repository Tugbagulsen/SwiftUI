//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Kasım Adalan on 25.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfieldTarih: UITextField!
    
    @IBOutlet weak var textfieldSaat: UITextField!
    
    var datePicker:UIDatePicker?
    
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textfieldTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textfieldSaat.inputView = timePicker
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgilamaMetod))
        
        view.addGestureRecognizer(dokunmaAlgilama)
        
        
    }
    
    @objc func tarihGoster(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        textfieldTarih.text = alinanTarih
        
        //view.endEditing(true)
        
    }
    
    @objc func saatGoster(timePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        
        textfieldSaat.text = alinanSaat
        
        
    }
    
    @objc func dokunmaAlgilamaMetod(){
         view.endEditing(true)
        
    }


}

