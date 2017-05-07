//
//  DetailViewController.swift
//  PCfreegame
//
//  Created by 平真衣 on 2017/04/08.
//  Copyright © 2017年 平真衣. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageView = self.photoImageView {
                let fileName = "\(detail).png"
                imageView.image = UIImage(named: fileName)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        self.title = "PCフリーゲーム"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

