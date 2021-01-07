//
//  AboutMeController.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/12/24.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import SafariServices

class AboutMeController: UITableViewController {

    var sectionContent = [
          [ "https://chickenfun.com.tw/banqiao-tour/",
            "https://www.shopback.com.tw/blog/the-best-gifts-in-banqiao-station"
          ],
          [
            "http://yoyonet.biz/egoing/map/mrt/taipei/bl2.htm",
             "https://www.metro.taipei/cp.aspx?n=91974F2B13D997F1",
             "http://mywoo.com/amp/train/1020.html",
             "https://www.thsrc.com.tw/ArticleContent/e6e26e66-7dc1-458f-b2f3-71ce65fdc95f"
          ]
       ]


      override func viewDidLoad() {
          super.viewDidLoad()
          
          tableView.tableFooterView = UIView()

      }
      
      override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          
          let link = sectionContent[indexPath.section][indexPath.row]
          if let url = URL(string: link) {
              let safariController = SFSafariViewController(url: url)
              present(safariController, animated: true, completion: nil)
          }
          
          tableView.deselectRow(at: indexPath, animated: false)
      }


  
}
