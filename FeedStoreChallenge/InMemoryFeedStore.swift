//
//  InMemoryFeedStore.swift
//  FeedStoreChallenge
//
//  Created by Samuel Stoltzfus on 12/18/19.
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import Foundation

class InMemoryFeedStore: FeedStore {
    private var store = [Date: [LocalFeedImage]]()
    
    func deleteCachedFeed(completion: @escaping FeedStore.DeletionCompletion) {
        
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping FeedStore.InsertionCompletion) {
        store[timestamp] = feed
        completion(nil)
    }
    
    func retrieve(completion: @escaping FeedStore.RetrievalCompletion) {
        guard let feed = store.first else {
            completion(.empty)
            return
        }
        
        completion(.found(feed: feed.value, timestamp: feed.key))
    }
}
