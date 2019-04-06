//
//  QuickSort3.swift
//  SortTest
//
//  Created by foolmcode on 2019/4/6.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation

public class QuickSort3{
   public static func quickSort3Ways<T:Comparable>(arr : inout[T]){
        quickSort3Ways(arr: &arr, left: 0, right: arr.count - 1)
    }
    //处理arr[left,right]
   static func quickSort3Ways<T:Comparable>(arr : inout[T] , left: Int , right:Int){
        let v = arr[left]
        var lt = left // arr[left + 1,lt] < v
        var gt = right + 1//arr[gt,r] > v
        var i = left + 1 //arr[lt + 1 ,i) == v
        
        
        while i < gt {
            if arr[i] < v{
                arr.swapAt(i, lt + 1)
                lt += 1
                i += 1
            }
            else if arr[i] > v{
                arr.swapAt(gt - 1, i)
                gt -= 1
            }
            else{
                i += 1
            }
        }
        arr.swapAt(left, lt)
        if lt - 1 > left{
            quickSort3Ways(arr: &arr, left: left, right: lt - 1)
        }
        if gt < right {
            quickSort3Ways(arr: &arr, left: gt, right: right)
        }
        
    }
}
