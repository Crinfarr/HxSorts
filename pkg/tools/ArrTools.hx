package pkg.tools;

/**
 * Swaps the positions of two elements in an array
 * @param arr 
 * @param idxA 
 * @param idxB 
 */
function swap(arr:Array<Any>, idxA:Int, idxB:Int):Void {
    if (arr[idxA] == null || arr[idxB] == null) {
        throw("Out of bounds");
    }
    var a:Any = arr[idxA];
    arr[idxA] = arr[idxB];
    arr[idxB] = a;
}