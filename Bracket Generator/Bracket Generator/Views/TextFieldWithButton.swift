//
//  TextFieldWithButton.swift
//  Bracket Generator
//
//  Created by Roberto Manese III on 4/18/19.
//  Copyright © 2019 jawnyawn. All rights reserved.
//

import UIKit

class TextFieldWithButton: UIView {

    @IBOutlet var playerNameTextField: UITextField!
    @IBOutlet var addButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit() {
        let nib = UINib(nibName: "TextFieldWithButton", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        self.addSubview(view)
        view.frame = self.bounds

        view.backgroundColor = UIColor.lightGray
        // corner radius leaves a white corner.

        addButton.backgroundColor = UIColor.orange
        addButton.tintColor = UIColor.white
        addButton.layer.cornerRadius = 10
    }

}
