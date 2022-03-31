package pkg.tools;

class Heap {
    public var heap:Array<Int>;
    /**
     * Creates a Heap from given data.
     * @param ipt the index to create a heap from
     */
    public function new(ipt:Array<Int>) {
        this.heap = [];
        this.heap = heapify(ipt);
    }
    /**
     * Re-sorts the heap
     */
    public function refresh() {
        var oldHeap:Array<Int> = this.heap;
        this.heap = [];
        heapify(oldHeap);
    }
    /**
     * Returns the parent of a given element
     * @param element the element to return the parent of
     * @param indexes whether to return the index (default) or values
     * @return Int
     */
    public function parent(element:Int, indexes=true):Null<Int> {
        var idx = Math.ceil((element-1)/2);
        return if (indexes) idx else this.heap[idx];
    }
    
    /**
     * Returns the children of a given element
     * @param element the element to return the children of
     * @param indexes whether to return indexes (default) or values
     */
    public function children(element:Int, indexes=true):{left:Null<Int>, right:Null<Int>} {
        var chiL_idx = (element*2)+1;
        var chiR_idx = (element*2)+2;
        return {
            left: if (indexes) chiL_idx else this.heap[chiL_idx],
            right: if (indexes) chiR_idx else this.heap[chiR_idx]
        };
    }
    function insert(num:Int) {
        this.heap.push(num);
    }
    function heapify(arr:Array<Int>):Array<Int> {
        return arr;
    }
}
class MaxHeap extends Heap {

    override function heapify(arr:Array<Int>):Array<Int> {
        for (i in 0...arr.length) {
            insert(arr[i]);
        }
        return this.heap;
    }

    /**
     * Inserts a number into the heap, sorted as a max-heap
     * @param num 
     */
    override public function insert(num:Int) {
        var idx:Int = this.heap.length;
        this.heap.push(num);
        var idxParent:Null<Int> = parent(idx);

        while (this.heap[idx] > (if (this.heap[idxParent] == null) this.heap[idx]+1 else this.heap[idxParent])) {
            if(idxParent == null) break;

            var swap:Int = this.heap[idxParent];
            this.heap[idxParent] = num;
            this.heap[idx] = swap;

            idx = idxParent;
            idxParent = parent(idx);
            
        }
    }
}
class MinHeap extends Heap {
    override function heapify(arr:Array<Int>):Array<Int> {
        for (i in 0...arr.length) {
            insert(arr[i]);
        }
        return this.heap;
    }
    override public function insert(num:Int) {
        var idx:Int = this.heap.length;
        this.heap.push(num);
        var idxParent:Null<Int> = parent(idx);

        while(this.heap[idx] < (if (this.heap[idxParent] == null) this.heap[idx]-1 else this.heap[idxParent])) {
            if (idxParent == null) break;

            var swap:Int = this.heap[idxParent];
            this.heap[idxParent] = num;
            this.heap[idx] = swap;

            idx = idxParent;
            idxParent = parent(idx);
        }
    }
}