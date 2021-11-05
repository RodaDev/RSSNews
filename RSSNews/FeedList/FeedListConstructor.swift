//
//  FeedListConstructor.swift
//  RSSNews
//
//  Created by Rodevelop on 10.10.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI
class FeedListConstructor {
    
    private init() {}
    
    static func createFeedListModule() -> UIViewController {
        let view = FeedListView()
        let interactor = FeedListInteractor()
        let router = FeedListRouter()
        let presenter = FeedListPresenter(view: view, interactor: interactor, router: router)
        router.view = view
        interactor.presenter = presenter
        return view as? UIViewController ?? UIViewController()
    }
}
