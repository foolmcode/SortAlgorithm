import Foundation

public class SortTestHelper {
    
     public static func generateRandomArray(_ n:Int, _ rangeL:Int ,_ rangeR:Int) -> [Int]{
        assert(rangeL <= rangeR)
        var arr = [Int]()
        for _ in 0 ..< n{
            let num  = Int( arc4random() % UInt32(rangeR - rangeL) + UInt32( 1 + rangeL) )
            arr.append(num)
            
        }
        return arr
    }
    
    
    public static func generateNearlyOrderedArray(n:Int,swapTimes:Int) ->[Int]{
        var arr = [Int]()
        for i in 1 ... n{
            arr.append(i);
        }
        for _ in 0 ..< swapTimes{
            let posx = Int( arc4random() % UInt32(n))
            let posy = Int( arc4random() % UInt32(n))
            arr.swapAt(posx, posy)
        }
        return arr
    }
    
    public static func printArray<T>(arr : [T]){
        for i in arr{
            print(i, separator: " ", terminator: "")
        }
        print("\n")
    }
    
    
    public static func testSort<T:Comparable>(sortName:String ,sort:(inout [T])->Void ,  arr:inout [T]) -> Void{
        
        let startTime = CFAbsoluteTimeGetCurrent()
         sort(&arr)
        let endTime = CFAbsoluteTimeGetCurrent()
        assert(isSorted(arr: arr))
        let str =  String(format: "%@ : %.2f s", sortName,endTime - startTime)
//        print("\(sortName) : \((endTime - startTime)*1000)  ms")
        print(str)
       
    }
    
    public static func isSorted<T:Comparable>(arr:[T]) -> Bool{
        for i in 0 ..< arr.count - 1{
            if arr[i] > arr[i + 1]{
                return false
            }
        }
        return true

    }
    
}


