//
//  ViewController.swift
//  WorkPractice
//
//  Created by 수리 on 09/05/2019.
//  Copyright © 2019 수리. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ar : [Dictionary<String, String>] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let dic1 = ["name":"호머 심슨", "point":"아빠", "image":"image1.jpg"]
        let dic2 = ["name":"마지 심슨", "point":"엄마", "image":"image2.png"]
        let dic3 = ["name":"바트 심슨", "point":"오빠", "image":"image3.png"]
        let dic4 = ["name":"리사 심슨", "point":"동생", "image":"image4.png"]
        let dic5 = ["name":"메기 심슨", "point":"막내", "image":"image5.png"]
        
        ar.append(dic1)
        ar.append(dic2)
        ar.append(dic3)
        ar.append(dic4)
        ar.append(dic5)
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    //행의 개수를 정하는 메소드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ar.count
    }
    //셀을 만들어주는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CostomCell
        //데이터 찾아오기
        var dic = ar[indexPath.row]
        print(dic)
        //찾아온 데이터 출력
        cell.lblName.text = dic["name"]
        cell.lblPoint.text = dic["point"]
        cell.imgView.image = UIImage(named: dic["image"]!)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 110
    }
    
}

