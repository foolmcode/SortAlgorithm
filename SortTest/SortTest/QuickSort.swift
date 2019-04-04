//
//  QuickSort.swift
//  SortTest
//
//  Created by foolmcode on 2019/3/23.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation
class QuickSort {
    public static func quickSort<T:Comparable>(arr:inout[T]) ->Void{
        quickSort(arr: &arr, left: 0, right: arr.count - 1)
    }
    
     static func quickSort<T:Comparable>(arr:inout[T] , left:Int , right:Int) -> Void{
        if(left >= right){
            return;
        }
        let p = partition(arr: &arr, left: left, right: right)
        quickSort(arr: &arr, left: left, right: p - 1);
        quickSort(arr: &arr, left: p + 1, right: right)
    }
    
     static func partition<T:Comparable>(arr:inout[T] , left:Int , right:Int) -> Int{
        let v = arr[left]
        var j = left
        //arr[left + 1 , j] < v,arr[j + 1,i] > v
        for i in left + 1 ... right{
            if arr[i] < v{
                arr.swapAt(i, j + 1)
                j += 1
            }
        }
        arr.swapAt(left, j)
        return j
    }
}
