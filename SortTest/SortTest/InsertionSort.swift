//
//  InsertionSort.swift
//  SortTest
//
//  Created by foolmcode on 2019/3/21.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation

public class InsertionSort{
    public static func insertionSort<T:Comparable>(arr:inout [T]){
        
        for i in 1 ..< arr.count{
            let e:T = arr[i]
            
            var j = i
            
            while j > 0{
                
                if(e < arr[j - 1]){
                    arr[j] = arr[j - 1]
                }
                else{
                    break
                }
                j -= 1
            }
            
            arr[j] = e
            
        }
    }
    
    
    public static func insertionSort<T:Comparable>(arr : inout [T] , left:Int , right:Int) -> Void{
        for i in left + 1 ... right{
            let e:T = arr[i]
            var j = i
            while j > left && arr[j - 1] > e{
                arr[j] = arr[j - 1]
                j -= 1
            }
            arr[j] = e
        }
    }

}

