//
// Created by objex on 1/23/18.
// Copyright (c) 2018 flyingobjex. All rights reserved.
//

import Foundation
import RxSwift

class RxObserverExample {

    let author:Observable<Author> = Observable.of(Author(name: nil, id: nil))

    private var currentName:String? = nil
    private var currentAuthorID:Int? = nil

    private var disposeBag = DisposeBag()
    
    init() {
        author.subscribe(onNext:{ a in
            self.currentName = a.name
            self.currentAuthorID = a.id
        }).disposed(by: disposeBag)
    }

    func description() -> String {
        return "Author: \(currentName ?? "no name"), ID: \(currentAuthorID ?? 999)"
    }
}
