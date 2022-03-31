import Sorts;
import pkg.tools.Heap;

class Tests {
    
    static function main() {
        // objHeapTest();
        // aHeapTest();
        beadSortTest();
    }
    static function aHeapTest(){
        // Adaptive Heap Sort test
        var nums:Array<Int> = [for (x in 0...10) Math.round(Math.random()*99)];
        trace(nums);
        trace(Sorts.adaptiveHeap(nums));
        
    }
    static function objHeapTest() {
        // heaping test
        var nums:Array<Int> = [for (x in 0...10) Math.round(Math.random()*99)];
        trace (new MaxHeap(nums).heap);
        trace(new MinHeap(nums).heap);
    }
    static function beadSortTest() {
        var nums:Array<Int> = [for (x in 0...10) Math.round(Math.random()*99)];
        trace(nums);
        trace(Sorts.bead(nums));
    }
}