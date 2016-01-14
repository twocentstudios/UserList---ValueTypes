//
//  Created by Christopher Trott on 1/14/16.
//  Copyright © 2016 twocentstudios. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    static let reuseIdentifier = "UserCell"

    var userViewModel: UserViewModel? {
        didSet {
            self.textLabel?.text = userViewModel?.name ?? ""
            self.imageView?.image = userViewModel?.avatarImageData.flatMap { UIImage(data: $0) } ?? UIImage(named: "placeholder")
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let height = CGRectGetHeight(self.bounds)
        self.imageView?.frame = CGRect(x: 0, y: 0, width: height, height: height)
        self.textLabel?.frame = CGRect(x: height, y: 0, width: 200, height: height)
    }
}
