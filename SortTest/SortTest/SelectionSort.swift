import Foundation

public class SelectionSort{
    public static func selectionSort<T:Comparable>(arr:inout [T])->Void{
        
        let count = arr.count
        for i in 0..<count{
            //寻找[i,n)区间里的最小值
            var minIndex = i
            for j in i..<arr.count{
                if arr[j] < arr[minIndex]{
                    minIndex = j
                }
            }
            arr.swapAt(i, minIndex)
        }
        
    }
    
   
}

