//
//  QuickSort2.swift
//  SortTest
//
//  Created by foolmcode on 2019/3/24.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation
class QuickSort2 {
    public static func quickSort2<T:Comparable>(arr:inout[T]) ->Void{
        quickSort2(arr: &arr, left: 0, right: arr.count - 1)
    }
    
     static func quickSort2<T:Comparable>(arr:inout[T] , left:Int , right:Int) -> Void{
        if(left >= right){
            return;
        }
        let p = partition2(arr: &arr, left: left, right: right)
        quickSort2(arr: &arr, left: left, right: p - 1);
        quickSort2(arr: &arr, left: p + 1, right: right)
    }
    
    static func partition2<T:Comparable>(arr:inout[T] , left:Int , right:Int) -> Int{
        let v = arr[left]
        //[left,i) <= v,(j,right] >= v
        var i = left + 1 , j = right
        while true {
            while i <= right && arr[i] < v {
                i += 1
            }
            while j > left + 1 && arr[j] > v{
                j -= 1
            }
            
            if i > j {
                break
            }
            arr.swapAt(i, j)
            i += 1
            j -= 1
            
        }
        arr.swapAt(left, j)
        return j
    }
}
