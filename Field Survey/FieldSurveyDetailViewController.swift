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
    @IBOutlet weak var fieldSurveyImageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var matchupLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
