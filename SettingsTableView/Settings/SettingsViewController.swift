//
//  SettingsViewController.swift
//  SettingsTableView
//
//  Created by Ani Adhikary on 08/06/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsTableView: UITableView!
    
    var settingsHeaderLabelStrings = ["GENERAL", "LOGOFF"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupSettingsTableView()
    }
    
    func setupNavigationBar() {
        navigationItem.hidesBackButton = true
        
        navigationItem.titleView = CustomNavigationBarHeader.setNavBar(navController: navigationController!, headerText: "Settings")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.done, target: self, action: #selector(dismissScreen))
    }

    @objc func dismissScreen() {
        dismiss(animated: true, completion: nil)
    }
    
    func setupSettingsTableView() {
        settingsTableView.dataSource = self
        settingsTableView.delegate = self
        settingsTableView.register(SettingsHeaderTableViewCell.nib, forCellReuseIdentifier: SettingsHeaderTableViewCell.identifier)
        settingsTableView.register(SelectAvatarTableViewCell.nib, forCellReuseIdentifier: SelectAvatarTableViewCell.identifier)
        settingsTableView.register(OfflineModeTableViewCell.nib, forCellReuseIdentifier: OfflineModeTableViewCell.identifier)
        settingsTableView.register(LogoffTableViewCell.nib, forCellReuseIdentifier: LogoffTableViewCell.identifier)
        settingsTableView.tableFooterView = UIView()
        
        settingsTableView.estimatedRowHeight = 44
        settingsTableView.rowHeight = UITableView.automaticDimension
    }
    
    @objc func logoffButtonClicked(_ button: UIButton) {
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
    @objc func selectAvatarButtonClicked(_ button: UIButton) {
        navigationController?.pushViewController(SelectAvatarViewController(), animated: true)
    }
}

extension SettingsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 1
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: SelectAvatarTableViewCell.identifier, for: indexPath) as! SelectAvatarTableViewCell
                cell.selectionStyle = .none
                //                let accessoryImage = UIImage(named: "SelectButton")
                //                cell.accessoryView = UIImageView(image: accessoryImage!)
                cell.selectAvatarButton.addTarget(self, action: #selector(selectAvatarButtonClicked(_:)), for: .touchUpInside)
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: OfflineModeTableViewCell.identifier, for: indexPath) as! OfflineModeTableViewCell
                cell.selectionStyle = .none
                return cell
            }
            
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: LogoffTableViewCell.identifier, for: indexPath) as! LogoffTableViewCell
                cell.logOffButton.addTarget(self, action: #selector(logoffButtonClicked(_:)), for: .touchUpInside)
                cell.selectionStyle = .none
                return cell
            }
        }
        
        return UITableViewCell()
    }
}

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingsHeaderTableViewCell.identifier) as! SettingsHeaderTableViewCell
        cell.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44)
        cell.settingsHeaderLabel.text = settingsHeaderLabelStrings[section]
        headerView.addSubview(cell)
        return headerView
    }
}
