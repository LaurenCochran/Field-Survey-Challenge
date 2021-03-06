//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Lauren on 2019-05-02.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var fieldSurveyTableView: UITableView!
    var dateFormatter = DateFormatter()
    
    let jsonFileName = "field_observations"
    var fieldSurveys: FieldSurveys?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldSurveys = FieldSurveyLoader.load(jsonFileName: jsonFileName)
        
        if fieldSurveys == nil {
            presentMessage(message: "Unable to load and parse \(jsonFileName).json")
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurveys?.observations.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fieldSurveyTableView.dequeueReusableCell(withIdentifier: "fieldSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell,
            let fieldSurvey = fieldSurveys?.observations[indexPath.row] {
            cell.titleLabel.text = fieldSurvey.title
            cell.dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            cell.classificationIconImageView.image = UIImage(named: fieldSurvey.classification.rawValue)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
            let selectedIndexPath = fieldSurveyTableView.indexPathForSelectedRow {
            destination.fieldSurvey = fieldSurveys?.observations[selectedIndexPath.row]
        }
    }
    
    func presentMessage(message: String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}



