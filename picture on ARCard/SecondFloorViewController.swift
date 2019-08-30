//
//  SecondFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class SecondFloorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func KominTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-qJB7JZSF6L-/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TheodorTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-BgIjz_7c9XE/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func QuilfaitTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-RwDBPx6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
