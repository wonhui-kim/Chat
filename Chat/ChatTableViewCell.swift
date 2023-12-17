//
//  ChatTableViewCell.swift
//  Chat
//
//  Created by kim-wonhui on 2023/12/17.
//

import UIKit

final class ChatTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "UITableViewCell"
    
    
    private let wrappedView: UIView = {
        let wrapped = UIView()
        wrapped.backgroundColor = .blue
        wrapped.translatesAutoresizingMaskIntoConstraints = false
        return wrapped
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraint()
    }
    
    private func setConstraint() {
        contentView.addSubview(wrappedView)
        
        NSLayoutConstraint.activate([
            wrappedView.widthAnchor.constraint(equalToConstant: 100),
            wrappedView.heightAnchor.constraint(equalToConstant: 50),
            wrappedView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            wrappedView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            wrappedView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            wrappedView.trailingAnchor.constraint(greaterThanOrEqualTo: contentView.trailingAnchor, constant: -30)
        ])
    }
}
