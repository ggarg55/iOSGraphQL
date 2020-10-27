//
//  LaunchPadDetailViewController.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import UIKit

class LaunchPadDetailViewController: UIViewController {
    @IBOutlet weak var vehicleName: UILabel!
    @IBOutlet weak var vehicleType: UILabel!
    @IBOutlet weak var succefulLaunch: UILabel!
    @IBOutlet weak var launchAttempts: UILabel!
    
    let viewModel = LaunchPadDetailViewModel()
    
    var data: [String: Any?] = [:] {
        didSet {
            viewModel.prepareData(data: data)
        }
    }
    
    override func viewDidLoad() {
        bindData()
    }
    
    func bindData() {
        viewModel.details.bind { [weak self](obj) in
            guard let self = self else { return }
            self.vehicleName.text = obj.name
            self.vehicleType.text = obj.typename
            self.succefulLaunch.text = "\(obj.successfulLaunches)"
            self.launchAttempts.text = "\(obj.attemptedLaunches)"
        }
    }
}
