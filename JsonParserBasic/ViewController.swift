//
//  ViewController.swift
//  JsonParserBasic
//
//  Created by SO YOUNG on 2018. 1. 13..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let jsonString = "{\"name\":\"soyoung\",\"weight\":65}"
        guard let jsonData = jsonString.data(using: .utf8) else {return}
        
        do {
            if let json = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] {
                print(json["name"] ?? "")
                print(json["weight"] ?? "")
            }
        }
        catch let error {
            print("parsing error\(error)")
        }
    }


}

