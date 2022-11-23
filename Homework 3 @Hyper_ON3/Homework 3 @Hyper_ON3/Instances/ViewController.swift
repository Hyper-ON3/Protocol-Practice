//
//  ViewController.swift
//  Homework 3 @Hyper_ON3
//
//  Created by Aleksey Kotsevych on 19/11/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let google = Company(companyName: "Google")
        
        let candidatesArray: [Candidate] = [
            Candidate(name: "Jack", skill: "Android", inSearchOfJob: true),
            Candidate(name: "Bob", skill: "IOS", inSearchOfJob: nil),
            Candidate(name: "Cris", skill: "IOS", inSearchOfJob: true),
            Candidate(name: "Tom", skill: nil, inSearchOfJob: true),
            Candidate(name: "Calvin", skill: "Java", inSearchOfJob: true),
        ]
        
        google.startAnInterview(candidates: candidatesArray)
        print()
        google.startATechnicalInterview(candidates: google.okArray)
        print()
        
    }


}

