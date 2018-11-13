//
//  ViewController.swift
//  customTableView
//
//  Created by Nathan Ranghel on 19/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

struct CellData {
    let image : UIImage?
    let message : String?
    let index:Int?
}

class CustomTableViewController: UITableViewController{
    
    var data = [CellData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.separatorStyle = .none
    
    
        for i in 1...20{
            data.append((CellData.init(image: UIImage(named: "zapiti"), message: "teste de layout custom \(i)",index:i)))
        }
        
        self.tableView.register(EditTextCell.self, forCellReuseIdentifier: "custom")
        self.tableView.register(RadioGroupCell.self, forCellReuseIdentifier: "custom1")
        self.tableView.register(SwitchCell.self, forCellReuseIdentifier: "custom2")
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        
        if data[indexPath.row].index! < 4 {
           let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom2") as! SwitchCell
          cell.initComponent(cell: data[indexPath.row])
            
      
            return cell
        }else if data[indexPath.row].index! > 6{
            
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom1") as! RadioGroupCell
            cell.initComponent(cell: data[indexPath.row])
            
            
            return cell
            
        }
        
        
        else{
         let  cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! EditTextCell
          
            cell.initComponent(cell: data[indexPath.row])
            
   
            return cell
        }
      
        
 
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        let vc = DetailVC()
//        let cell = arrays[indexPath.item]
//        vc.commonInit(cell.wordsData!, title: cell.houseData!)
//        self.navigationController?.pushViewController(vc, animated: true)
//        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return data.count
    }

}

