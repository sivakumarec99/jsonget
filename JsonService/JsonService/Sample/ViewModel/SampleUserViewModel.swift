//
//  SampleUserViewModel.swift
//  JsonService
//
//  Created by JIDTP1408 on 12/02/25.
//

import Foundation


class SampleUserViewModel {
    private var getUserUseCase :SampleGetUserUseCase
    var sampleUser = [SampleUser]()
    var onSampleUserFetched : (([SampleUser])-> Void)?
    var onError: ((String) -> Void)?

    init(sampleGetUserUseCase: SampleGetUserUseCase) {
        self.getUserUseCase = sampleGetUserUseCase
    }
    
    func fetchSampleUser(){
        
        self.getUserUseCase.execute{ [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self?.sampleUser = users
                    self?.onSampleUserFetched?(users)
                case .failure:
                    self?.onError?("Failed to fetch users.")
                }
            }
            
        }
        
    }
    
    
}
