//
//  ParticipantViewController.swift
//  Bracket Generator
//
//  Created by Roberto Manese III on 4/18/19.
//  Copyright © 2019 jawnyawn. All rights reserved.
//

import UIKit

class ParticipantViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    @IBOutlet var playerNameTextField: UITextField!
    @IBOutlet var addButton: UIButton!

    var players: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = UIColor.gray

        addButton.addTarget(self, action: #selector(didTapAddButton), for: .touchUpInside)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = players[indexPath.row]
        return cell
    }

    @objc func didTapAddButton() {
        guard let text = playerNameTextField.text else { return }
        if text.isEmpty {
            print("jere")
        }
        players.append(text)
        playerNameTextField.text = ""
        self.tableView.reloadData()
    }

}
