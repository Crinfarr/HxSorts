package pkg;

import pkg.tools.Heap;
import pkg.tools.ArrTools;

/**
 * Build a Max-Heap(Min-Heap): put all the data into the heap so that all 
 * nodes are either greater than or equal (less than or equal to for Min-Heap) to each of its child nodes.
 * 
 * Swap the first element of the heap with the last element of the heap.
 * 
 * Remove the last element from the heap and put it at the end of the list.
 * Adjust the heap so that the first element ends up at the right place in the heap.
 * 
 * Repeat Step 2 and 3 until the heap has only one element. Put this last element at 
 * the end of the list and output the list. The data in the list will be sorted.
 */
/**
 * [Description]
 * @param arr the array to sort
 * @return Array<Int> (sorted)
 */
function sort(arr:Array<Int>):Array<Int> {
    var heap:Heap = new MaxHeap(arr);
    var sorted:Array<Int> = [];
    while (heap.heap.length > 1) {
        swap(heap.heap, 0, heap.heap.length-1);
        sorted.push(heap.heap.pop());
        heap.refresh();
    }
    sorted.push(heap.heap[0]);
    return(sorted);
}