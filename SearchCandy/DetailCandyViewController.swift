//
//  DetailCandyViewController.swift
//  SearchCandy
//
//  Created by Anhdzai on 12/24/17.
//  Copyright © 2017 Anhdzai. All rights reserved.
//

import UIKit

class DetailCandyViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var candyImageView: UIImageView!
    
    var detailCandy: Candy? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailCandy = detailCandy {
            if let detailLabel = detailLabel, let candyImage = candyImageView {
                detailLabel.text = detailCandy.name
                candyImage.image = UIImage(named: detailCandy.name)
                title = detailCandy.category
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
