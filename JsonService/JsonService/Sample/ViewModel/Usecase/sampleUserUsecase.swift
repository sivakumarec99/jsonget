//
//  sampleUserUsecase.swift
//  JsonService
//
//  Created by JIDTP1408 on 12/02/25.
//

import Foundation

protocol SampleGetUserUseCase {
    func execute(completion: @escaping(Result<[SampleUser],Error>) -> Void)
}

class GetSampleUsecaseUserImpl: SampleGetUserUseCase{
    
    
    
    func execute(completion: @escaping (Result<[SampleUser], any Error>) -> Void) {
        
        
        
        
        
    }
    
}
