//
//  ViewController.swift
//  check-cpu-gpu
//
//  Created by Rebouh Aymen on 07/02/2019.
//  Copyright © 2019 Rebouh Aymen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let data = Array(1...400).map { String($0) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: TextCollectionViewCell.self), for: indexPath) as! TextCollectionViewCell
        cell.textLabel.text =  data[indexPath.item]
        
        return cell
    }
}
