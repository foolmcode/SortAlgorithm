//
//  HeapSort.swift
//  SortTest
//
//  Created by foolmcode on 2019/4/6.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation
public class HeapSort{
    public static func heapSort1<T:Comparable>(arr:inout [T]){
        let maxHeap = MaxHeap<T>()
        for i in 0 ..< arr.count{
            maxHeap.insert(item: arr[i])
        }
        
        for i in stride(from: arr.count - 1, through: 0, by: -1){
            arr[i] = maxHeap.extractMax()
        }
    }
}
