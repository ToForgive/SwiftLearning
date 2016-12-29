//
//  TableViewCell.swift
//  SwiftLearning
//
//  Created by Mr.S on 2016/12/23.
//  Copyright © 2016年 ST.MEDIA. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var cellPath : IndexPath = []
    var cellCallBack : (IndexPath)->Void = { (path) in
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func fillCellWithIndexPath(path: IndexPath, callBack: @escaping (IndexPath)->Void) {
        self.cellPath = path
        self.cellCallBack = callBack;
        if path.row % 2 == 0 {
            self.contentView.backgroundColor = UIColor.gray
        }else{
            self.contentView.backgroundColor = UIColor.lightGray;
        }
    }
    
    @IBAction func buttonOnTap(_ sender: UIButton) {
        self.cellCallBack(self.cellPath)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
