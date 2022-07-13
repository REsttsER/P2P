//
//  LoginViewModel.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/12.
//

import RxSwift
import RxRelay

class LoginViewModel {
    let emailObserver = BehaviorRelay<String>(value: "")
    let passwordObserver = BehaviorRelay<String>(value: "")
    
    var isValid: Observable<Bool> {
        return Observable.combineLatest(emailObserver, passwordObserver)
            .map { email, password in
                return !email.isEmpty && email.contains("@") && email.contains(".") && password.count > 0
            }
    }
}
