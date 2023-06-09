//
//  Hh.swift
//  ShopifyUser
//
//  Created by Mac on 09/06/2023.
//

import UIKit

class Hh: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UserDefaults.standard.integer(forKey: "customerId")
        let userDefultId =  UserDefaults.standard.integer(forKey:"customerId")
            print("#######", userDefultId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userDefultId =  UserDefaults.standard.integer(forKey:"customerId")
            print("#######", userDefultId)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
