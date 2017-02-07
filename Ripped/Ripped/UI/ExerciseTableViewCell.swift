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

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var goalLabel: UILabel!
    @IBOutlet private weak var resultsStackView: UIStackView!

    // MARK: - Overriden
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clearContents()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        clearContents()
    }
    
    // MARK: - Internal
    
    func configure(withName name: String, goal: String, resultsViews: [ExerciseResultsView]) {
        nameLabel.text = name
        goalLabel.text = goal
        resultsViews.forEach {
            resultsStackView.addArrangedSubview($0)
        }
    }
    
    // MARK: - Private
    
    private func clearContents() {
        nameLabel.text = nil
        goalLabel.text = nil
        resultsStackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
    }
    
}
