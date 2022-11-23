//
//  Protocols.swift
//  Homework 3 @Hyper_ON3
//
//  Created by Aleksey Kotsevych on 19/11/2022.
//

import Foundation

protocol TechnicalInterviewProtocol{
    
    var gotAnOfferArray: [String]? { get set }
    var didntGetAnOfferArray: [String]? { get set }
    
    func technicalInterview(candidate: Candidate)
}

protocol CompanyProtocol: TechnicalInterviewProtocol {
    
    var companyName: String { get set }
    var okArray: [Candidate]? { get set }
    var failArray: [Candidate]? { get set }
    
    func startAnInterview(candidates: [Candidate]?)
    func startATechnicalInterview(candidates: [Candidate]?)
    func interview(candidate: Candidate)
}

protocol ProgrammerProtocol {
    var name: String { get set }
    var skill: String? { get }
    var inSearchOfJob: Bool? { get }
}
