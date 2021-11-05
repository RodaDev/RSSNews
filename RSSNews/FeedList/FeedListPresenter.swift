//
//  FeedListPresenter.swift
//  RSSNews
//
//  Created by Rodevelop on 10.10.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

class FeedListPresenter: FeedListPresenterProtocol {
    
    weak var view: FeedListViewProtocol!
    let interactor: FeedListInteractorProtocol
    let router: FeedListRouterProtocol
    
    init(view: FeedListViewProtocol,
         interactor: FeedListInteractorProtocol,
         router: FeedListRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}
