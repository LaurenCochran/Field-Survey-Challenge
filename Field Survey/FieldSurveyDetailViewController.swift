//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Lauren on 2019-05-02.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldSurveyImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let fieldSurvey = fieldSurvey{
            titleLabel.text = fieldSurvey.title
            dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            fieldSurveyImageView.image = UIImage(named: fieldSurvey.classification.rawValue)

    }
    



    }
}
