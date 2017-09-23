//
//  EditItemViewController.swift
//  BucketList
//
//  Created by Meera Thenappan on 9/18/17.
//  Copyright © 2017 Parth Patidar. All rights reserved.
//

import UIKit

class EditItemViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!

    @IBOutlet weak var descriptin: UITextField!
    @IBOutlet weak var latitude: UITextField!
    @IBOutlet weak var longitude: UITextField!
    @IBOutlet weak var Date: UIDatePicker!
    
    var nameToDisplay: String!
    var dateToDisplay:String!
    var latToDisplay: Double!
    var longToDisplay:Double!
    var desToDisplay: String!
    var recievedItem = BucketItem(name: "w",  date: "09-18-2017", done: false,  longitude: 0.0,  latitude: 0.0,  des: "")
    var example: String!
    
    
    
    @IBAction func Cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recievedItem.name)
        Name.text = recievedItem.name
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let Actualdate = dateFormatter.date(from: recievedItem.Date)
        Date.setDate(Actualdate!, animated: false)
        descriptin.text = recievedItem.des
        longitude.text = String(recievedItem.Longitude)
        latitude.text = String(recievedItem.Latitude)
        
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        nameToDisplay = Name.text!
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "MM-dd-yyyy"
        dateToDisplay = timeFormatter.string(from: Date.date)
        latToDisplay = Double(latitude.text!)
        longToDisplay = Double(longitude.text!)
        desToDisplay = descriptin.text!
        
    }

}
