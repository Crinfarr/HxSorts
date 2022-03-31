package ;

import pkg.*;

class Sorts {
    public static function adaptiveHeap(i:Array<Int>) {
        return AdaptiveHeapSort.sort(i);
    }
    public static function bead(i:Array<Int>) {
        return BeadSort.sort(i);
    }
}