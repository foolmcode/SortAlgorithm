//
//  MergeSort.swift
//  SortTest
//
//  Created by foolmcode on 2019/3/22.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation
class MergeSort {
    static func merge<T:Comparable>(arr: inout [T],left:Int,mid:Int,right:Int) ->Void{
        var aux:[T] = arr
        for i in left ... right {
            aux[i - left] = arr[i]
        }
        var i = left , j = mid + 1
        for k in left ... right{
            
            if(i > mid){
                arr[k] = aux[j - left]
                j += 1
            }
            else if(j > right){
                arr[k] = aux[i - left]
                i += 1
            }
            else if aux[i - left] < aux[j - left]{
                arr[k] = aux[i - left]
                i += 1
            }
            else{
                arr[k] = aux[j - left]
                j += 1
            }
        }
    }
    
    
    static func mergeSort<T:Comparable>(arr : inout [T] , l : Int , r : Int) ->Void{
        if(l >= r){
            return
        }
        let mid = (l + r) / 2
        
        mergeSort(arr: &arr, l: l, r: mid)
        mergeSort(arr: &arr, l: mid + 1, r: r)
        if arr[mid] > arr[mid + 1]{
            merge(arr: &arr, left: l, mid: mid, right: r)
        }
        
    }
    
    public static func mergeSort<T:Comparable>(arr : inout [T] ) ->Void{
        mergeSort(arr: &arr, l: 0, r: arr.count - 1)
        
    }
}
