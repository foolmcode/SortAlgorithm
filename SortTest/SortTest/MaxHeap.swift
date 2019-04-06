//
//  MaxHeap.swift
//  Algorithm_Swift
//
//  Created by foolmcode on 2019/3/26.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation
//使用数组实现最大堆
public class MaxHeap<Item:Comparable> {
    
    var size:Int{
        get{
            return data.count - 1
        }
        
    }
    var isEmpty:Bool{
//        print(data)
        return data.count <= 1
    }
    private var data:[Item]
    private func shiftUp(k : inout Int){
        while (k > 1 && data[k / 2] < data[k]) {
            data.swapAt(k/2, k)
            k /= 2
        }
    }
    private func shiftDown(k : inout Int){
        while 2 * k <= size {
            var j = 2 * k
            if j + 1 <= size && data[j + 1] > data[j]{
                j += 1
            }
            if data[k] >= data[j]{
                break;
            }
            
            data.swapAt(j, k)
            k = j
        }
    }
    public init() {
        data = Array()
    }
    
    func insert(item : Item){
        if data.count == 0 {
            data.append(item) //此处为占位，真正的数据从数组的1索引开始，不是0
        }
        data.append(item)
        var count = size
        shiftUp(k: &count)
    }
    //取出最大元素，并通过shiftDown保持剩余元素仍为最大堆。
    func extractMax() -> Item{
        var index = 1
        let ret = data[index]
        assert(data.count > 0)
        data.swapAt(index,size)
        data.removeLast()
        shiftDown(k: &index)
        
        return ret;
    }
    
    
    
}
