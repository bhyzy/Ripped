//
//  ExerciseResultsView.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ExerciseResultsView: UIView {
    
    // MARK: - Properties

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var commentLabel: UILabel!
    @IBOutlet private weak var resultsStackView: UIStackView!
    
    // MARK: - Initialization
    
    static func create() -> ExerciseResultsView {
        return Bundle.main.loadNibNamed("ExerciseResultsView", owner: nil, options: nil)?.first as! ExerciseResultsView
    }
    
    // MARK: - Overriden
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clearContents()
    }
    
    // MARK: - Internal
    
    func configure(withTitle title: String, results: [String], comment: String?) {
        titleLabel.text = title
        commentLabel.text = comment
        results.map { resultLabel(withText: $0) }.forEach {
            resultsStackView.addArrangedSubview($0)
        }
    }
    
    // MARK: - Private
    
    private func clearContents() {
        titleLabel.text = nil
        commentLabel.text = nil
        resultsStackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
    }
    
    private func resultLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
        return label
    }
    
}
