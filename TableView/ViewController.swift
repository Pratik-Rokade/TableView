//
//  ViewController.swift
//  TableView
//
//  Created by Pratik's Macbook on 21/07/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var tableView: UITableView!
    
    var carArray = [car] ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carArray.append(car(carName: "Audi", image:"Audi"))
        carArray.append(car(carName: "Bentley", image: "Bentley"))
        carArray.append(car(carName: "BMW m5", image: "BMW m5"))
        carArray.append(car(carName: "Cullinan", image:"Cullinan" ))
        carArray.append(car(carName: "Mercedes", image: "Mercedes"))
        carArray.append(car(carName: "Lambo", image: "Lambo"))
        carArray.append(car(carName: "Jaguar", image: "Jaguar"))
        carArray.append(car(carName: "Ferrari", image: "Ferrari"))
        carArray.append(car(carName: "Maserati", image: "Maserati"))
        carArray.append(car(carName: "Porsche", image: "Porsche"))
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carArray.count //returning array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carcell1 = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath)as! PersonTableViewCell
        let carcell2 = carArray[indexPath.row]  //full array in rows
        
        carcell1.carName.text = carcell2.carName
        carcell1.carImage.image = UIImage(named: carcell2.image)
        return carcell1
        
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell .alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, 300, 20, 0  )
        
        cell.layer.transform = transform
        
        UIView.animate(withDuration : 1.0){
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
}

