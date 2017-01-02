//
//  ExerciseResultsView.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ExerciseResultsView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var resultsStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIViewNoIntrinsicMetric, height: 77)
    }
    
}
