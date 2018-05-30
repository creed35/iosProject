//
//  DetailViewController.swift
//  mMasterDetail
//
//  Created by 스마트금융과7 on 2018. 5. 30..
//  Copyright © 2018년 스마트금융과7. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    //    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
//            if let label = detailDescriptionLabel {
//                label.text = detail.description as! String
//            }
            
            if let imageView = photoImageView {
                let fileName = "\(detail).jpg"
                imageView.image = UIImage(named: fileName)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        
        // 마스터 화면의 타이틀 문자
        self.title = "불꽃놀이 목록"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: AnyObject? /* NSDate? */ {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

