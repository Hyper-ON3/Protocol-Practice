//
//  Classes.swift
//  Homework 3 @Hyper_ON3
//
//  Created by Aleksey Kotsevych on 19/11/2022.
//

import Foundation

class Company: CompanyProtocol {
  
    var companyName: String

    var okArray: [Candidate]?
    var failArray: [Candidate]?
    
    var gotAnOfferArray: [String]? = ["There are no suitable candidates."]
    var didntGetAnOfferArray: [String]?
    
    init(companyName: String) {
        self.companyName = companyName
    }
   
    // Start interview functions
    func startAnInterview(candidates: [Candidate]?) {
        guard let applicant = candidates else { return }
        
        for programmer in applicant {
            interview(candidate: programmer)
        }
    }
    
    func startATechnicalInterview(candidates: [Candidate]?) {
        guard let applicant = candidates else { return }
        
        for programmer in applicant {
            technicalInterview(candidate: programmer)
        }
    }
    
    // Interview logic functions
    func interview(candidate: Candidate) {
        guard candidate.inSearchOfJob != nil else { return }
        
        if candidate.inSearchOfJob == true {
            
            print("\(candidate.name) - Suitable for an interview")
            (okArray?.append(candidate)) ?? (okArray = [])
            
        } else {
            
            failArray?.append(candidate)
            print("\(candidate.name) - Not suitable for an interview")
            
        }
    }
    
    func technicalInterview(candidate: Candidate) {
        guard candidate.skill != nil else { return }
        
        if candidate.skill?.lowercased() == "ios" {
            
            gotAnOfferArray?.append(candidate.name)
            print("\(candidate.name), you're right for us. Wait for the offer.")
            
        } else {
            
            didntGetAnOfferArray?.append(candidate.name)
            print("It's a pity but \(candidate.name) didn't pass the interview.")
            
        }
    }
}

class Candidate: ProgrammerProtocol {
    
    var name: String = ""
    var skill: String?
    var inSearchOfJob: Bool?
    
    init(name: String, skill: String?, inSearchOfJob: Bool?) {
        self.name = name
        self.skill = skill
        self.inSearchOfJob = inSearchOfJob
    }
}
