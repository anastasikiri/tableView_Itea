//
//  ViewController.swift
//  tableView_Itea
//
//  Created by Anastasia Bilous on 2022-05-31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        registerCells()
    }
    
    private func registerCells() {
        
        tableView.register(
            UINib(nibName: "RedTableViewCell", bundle: nil),
            forCellReuseIdentifier: "RedTableViewCell"
        )
        tableView.register(
            UINib(nibName: "BlueTableViewCell", bundle: nil),
            forCellReuseIdentifier: "BlueTableViewCell"
        )
        tableView.register(
            UINib(nibName: "GreenTableViewCell", bundle: nil),
            forCellReuseIdentifier: "GreenTableViewCell"
        )
        tableView.register(
            UINib(nibName: "WhiteTableViewCell", bundle: nil),
            forCellReuseIdentifier: "WhiteTableViewCell"
        )
    }
}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rowItem = destinations[indexPath.row]
        
        switch rowItem {
        case "profile":
            let cell = tableView.dequeueReusableCell(withIdentifier: "RedTableViewCell") as?
            RedTableViewCell
            cell?.cvImageView.image = UIImage(named: "Image-5")
            cell?.cvNameLabel.text = name
            return cell ?? UITableViewCell()
            
        case "generalExperience":
            let cell = tableView.dequeueReusableCell(withIdentifier: "BlueTableViewCell") as?
            BlueTableViewCell
            cell?.cvDetailsLabel.text = experience
            cell?.cvDetailsImageView.image = UIImage(named: "Image-1")
            return cell ?? UITableViewCell()
            
        case "experience1":
            let cell = tableView.dequeueReusableCell(withIdentifier: "GreenTableViewCell") as?
            GreenTableViewCell
            cell?.yearsLabel.text = years[0]
            cell?.companyNameLabel.text = company[0]
            cell?.occupationNameLabel.text = occupation[0]
            return cell ?? UITableViewCell()
            
        case "experience2":
            let cell = tableView.dequeueReusableCell(withIdentifier: "GreenTableViewCell") as?
            GreenTableViewCell
            cell?.yearsLabel.text = years[1]
            cell?.companyNameLabel.text = company[1]
            cell?.occupationNameLabel.text = occupation[1]
            return cell ?? UITableViewCell()
            
        case "experience3":
            let cell = tableView.dequeueReusableCell(withIdentifier: "GreenTableViewCell") as?
            GreenTableViewCell
            cell?.yearsLabel.text = years[2]
            cell?.companyNameLabel.text = company[2]
            cell?.occupationNameLabel.text = occupation[2]
            return cell ?? UITableViewCell()
            
        case "skills":
            let cell = tableView.dequeueReusableCell(withIdentifier: "BlueTableViewCell") as?
            BlueTableViewCell
            cell?.cvDetailsLabel.text = skills
            cell?.cvDetailsImageView.image = UIImage(named: "Image-2")
            return cell ?? UITableViewCell()
            
        case "network":
            let cell = tableView.dequeueReusableCell(withIdentifier: "WhiteTableViewCell") as?
            WhiteTableViewCell
            cell?.swiftLabel.text = network[0]
            cell?.gitLabel.text = network[1]
            cell?.swiftImageView.image = UIImage(named: "Image-3")
            cell?.gitImageView.image = UIImage(named: "Image-4")
            for item in 0..<cell!.starViewCollection.count {
                cell?.starViewCollection[item].image = UIImage(named: "Image-6")
            }
            return cell ?? UITableViewCell()
            
        default:
            return UITableViewCell()
        }
    }
}

