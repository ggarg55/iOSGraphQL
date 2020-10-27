//
//  LaunchPadListViewController.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import UIKit

class LaunchPadListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var succesLabelValue: UILabel!
    
    private let viewModel = LaunchPadListViewModel()
    private var launchPadData: [LaunchPadsQuery.Data.Launchpad] = []
    var selectedData: [String: Any?] = [:]
    
    func bindViewModel() {
        viewModel.launchPads.bind {[weak self] in
            guard let self = self else { return }
            self.launchPadData = $0
            self.tableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.fetchLaunchPadData()
        bindViewModel()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.isUserInteractionEnabled = true
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func showDetails() {
        //self.performSegue(withIdentifier: kDetailsSegue, sender: self)
        self.succesLabelValue.text = self.selectedData["name"] as? String
        UIView.animate(withDuration: 5) { [weak self] in
            guard let self = self else { return }
            self.topConstraint.constant = 200
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == kDetailsSegue) {
            let destView = segue.destination as! LaunchPadDetailViewController
            destView.viewModel.prepareData(data: selectedData)
            destView.data = selectedData
        }
    }
}

extension LaunchPadListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.launchPadData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = self.launchPadData[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = self.launchPadData[indexPath.row]
        selectedData = data.resultMap
        debugPrint("Selected Row:  \(data)")
        showDetails()
    }
}
