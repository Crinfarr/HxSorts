package pkg.tools;

import haxe.macro.Expr.Function;

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
function max(arr:Array<Int>):Int {
    var out:Int = arr[0];
    for (i in arr) {
        if (i > out) out = i;
    }
    return out;
}
function sum(arr:Array<Int>):Int {
    var out:Int = 0;
    for (i in arr) out+=i;
    return out;
}