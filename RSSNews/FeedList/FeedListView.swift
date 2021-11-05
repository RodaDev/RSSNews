//
//  View.swift
//  ViperExample
//
//  Created by RodaDev on 01.08.2021.
//

import SwiftUI
import SnapKit

class FeedListView: UIViewController, FeedListViewProtocol {
    override func viewDidLoad() {
        super.viewDidLoad()
        let rootVc = UIHostingController(rootView: FeedListSwiftUI())
        addChild(rootVc)
        view.addSubview(rootVc.view)
        rootVc.view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
