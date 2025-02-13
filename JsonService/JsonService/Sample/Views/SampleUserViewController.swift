//
//  SampleUserViewController.swift
//  JsonService
//
//  Created by JIDTP1408 on 12/02/25.
//

import UIKit

class SampleUserViewController: UIViewController {

    private var tableView = UITableView()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleSetUpUI()
        
        
    }
    
    func sampleSetUpUI(){
        view.backgroundColor = .white
        title = "SampleUI"
        tableView.bounds = self.view.bounds
        self.view.addSubview(self.tableView)
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    
    }
    
}

extension SampleUserViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text  = ""
        return cell
    }
}
