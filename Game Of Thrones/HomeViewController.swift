//
//  ViewController.swift
//  Game Of Thrones
//
//  Created by MacBook Pro on 16/10/19.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var indexPath = [IndexPath]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "CharacterCell")
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return headerDesign(section: section)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func headerDesign(section:Int) -> UIView{
        
        let sectionView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        sectionView.backgroundColor = UIColor.orange
        
        let showHideCharacterButton = UIButton(frame: sectionView.bounds)
        showHideCharacterButton.setTitle("House \(section)", for: .normal)
        showHideCharacterButton.addTarget(self, action: #selector(showHideCharacterButtonPressed), for: .touchUpInside)
        
        sectionView.addSubview(showHideCharacterButton)
        
        
        return sectionView
    }
    
   @objc func showHideCharacterButtonPressed()  {
        
    let indexPaths = tableViewOutlet
    }
    
    
}

