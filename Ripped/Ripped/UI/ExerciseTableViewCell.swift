//
//  ExerciseTableViewCell.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {
    
    // MARK: - Properties

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var resultsStackView: UIStackView!

    // MARK: - Overriden
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clearContents()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        clearContents()
    }
    
    // MARK: - Private
    
    private func clearContents() {
        nameLabel.text = nil
        goalLabel.text = nil
        resultsStackView.subviews.forEach {
            $0.removeFromSuperview()
        }
    }
    
}
