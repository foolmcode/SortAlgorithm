//
//  main.swift
//  SortTest
//
//  Created by foolmcode on 2019/3/21.
//  Copyright © 2019 foolmcode. All rights reserved.
//

import Foundation


let n = 10_000
var testArr =  SortTestHelper.generateRandomArray(n, 0, n)
//var testArr2 = testArr
//var testArr3 = testArr
////print(testArr)
//SortTestHelper.testSort(sortName: "Merge Sort", sort: MergeSort.mergeSort, arr: &testArr)
//////SortTestHelper.testSort(sortName: "Insertion Sort", sort:InsertionSort.insertionSort, arr: &testArr2)
//SortTestHelper.testSort(sortName: "Quick Sort", sort: QuickSort.quickSort, arr: &testArr)
////SortTestHelper.testSort(sortName: "Insertion Sort", sort:InsertionSort.insertionSort, arr: &testArr2)
//SortTestHelper.testSort(sortName: "Quick Sort 2", sort: QuickSort2.quickSort2, arr: &testArr2)
//SortTestHelper.testSort(sortName: "Quick Sort 3", sort: QuickSort3.quickSort3Ways, arr: &testArr)
SortTestHelper.testSort(sortName: "Heap Sort", sort: HeapSort.heapSort1, arr: &testArr)
//print(testArr)
////mergeSort(arr: &testArr)


