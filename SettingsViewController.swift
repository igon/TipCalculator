//
//  SettingsViewController.swift
//  
//
//  Created by Ivan on 8/24/15.
//
//

import UIKit

class SettingsViewController: UIViewController {

    var tipsCountry = [
        "Argentina",
        "Armenia",
        "Australia",
        "Austria",
        "Azerbaijan",
        "Bahamas",
        "Bahrain",
        "Belgium",
        "Bolivia",
        "Brazil",
        "Brunei",
        "Bulgaria",
        "Canada",
        "Cayman Islands",
        "Chile",
        "China",
        "Colombia",
        "Costa Rica",
        "Cuba",
        "Czech Rep",
        "Denmark",
        "Ecuador",
        "Egypt",
        "England",
        "Fiji",
        "Finland",
        "France",
        "Germany",
        "Greece",
        "Guatemala",
        "Holland",
        "Hong Kong",
        "Hungary",
        "Iceland",
        "India",
        "Indonesia",
        "Ireland",
        "Israel",
        "Italy",
        "Japan",
        "Kenya",
        "Luxembourg",
        "Macao",
        "Madagascar",
        "Malaysia",
        "Mexico",
        "Morocco",
        "New Zealand",
        "Nicaragua",
        "Norway",
        "Oman",
        "Paraguay",
        "Peru",
        "Philippines",
        "Poland",
        "Portugal",
        "Romania",
        "Russia",
        "Samoa",
        "Saudi Arabia",
        "Scotland",
        "Singapore",
        "South Africa",
        "South Korea",
        "Spain",
        "Sweden",
        "Switzerland",
        "Taiwan",
        "Tanzania",
        "Thailand",
        "Turkey",
        "Ukraine",
        "United Arab Emirates",
        "United States",
        "Venezuela",
        "Vietnam",
        "Wales"
    ]
    var tipsByCountry: [String: Int] = [
        "Argentina":10,
        "Armenia":10,
        "Australia":10,
        "Austria":5,
        "Azerbaijan":10,
        "Bahamas":10,
        "Bahrain":10,
        "Belgium":10,
        "Bolivia":10,
        "Brazil":10,
        "Brunei":0,
        "Bulgaria":10,
        "Canada":15,
        "Cayman Islands":15,
        "Chile":10,
        "China":3,
        "Colombia":10,
        "Costa Rica":0,
        "Cuba":0,
        "Czech Rep":5,
        "Denmark":0,
        "Ecuador":10,
        "Egypt":5,
        "England":10,
        "Fiji":0,
        "Finland":10,
        "France":5,
        "Germany":5,
        "Greece":5,
        "Guatemala":10,
        "Holland":5,
        "Hong Kong":10,
        "Hungary":10,
        "Iceland":10,
        "India":10,
        "Indonesia":10,
        "Ireland":10,
        "Israel":12,
        "Italy":10,
        "Japan":0,
        "Kenya":5,
        "Luxembourg":5,
        "Macao":10,
        "Madagascar":10,
        "Malaysia":0,
        "Mexico":10,
        "Morocco":0,
        "New Zealand":0,
        "Nicaragua":10,
        "Norway":10,
        "Oman":0,
        "Paraguay":10,
        "Peru":10,
        "Philippines":10,
        "Poland":10,
        "Portugal":10,
        "Romania":0,
        "Russia":10,
        "Samoa":0,
        "Saudi Arabia":10,
        "Scotland":10,
        "Singapore":0,
        "South Africa":10,
        "South Korea":0,
        "Spain":7,
        "Sweden":10,
        "Switzerland":0,
        "Taiwan":10,
        "Tanzania":10,
        "Thailand":0,
        "Turkey":0,
        "Ukraine":10,
        "United Arab Emirates":0,
        "United States":15,
        "Venezuela":10,
        "Vietnam":0,
        "Wales":10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipsCountry.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        return tipsCountry[row]
     }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
