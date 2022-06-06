//
//  CVOwner.swift
//  tableView_Itea
//
//  Created by Anastasia Bilous on 2022-05-31.
//

import Foundation

var name =  "Anastasia"
var years = ["2021 - ...","2020 - 2021","2017 - 2020"]
var experience = "Job experience"
var skills = "Problem-solving, accuracy and attention to detail"
var company = ["Google", "Apple", "Toyota"]
var occupation = ["Senior iOS Developer","iOS Engineer","Project Manager" ]
var network = ["Swift", "Git"]

enum DestinationOfCell: String, Codable, CaseIterable {
    case profile
    case generalExperience
    case experience1
    case experience2
    case experience3
    case skills
    case network
}

var destinations:[String] = DestinationOfCell.allCases.map {$0.rawValue}

