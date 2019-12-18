//
//  InMemoryFeedStore.swift
//  FeedStoreChallenge
//
//  Created by Samuel Stoltzfus on 12/18/19.
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import Foundation

class InMemoryFeedStore: FeedStore {
    func deleteCachedFeed(completion: @escaping FeedStore.DeletionCompletion) {
        
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping FeedStore.InsertionCompletion) {
        
    }
    
    func retrieve(completion: @escaping FeedStore.RetrievalCompletion) {
        completion(.empty)
    }
}
