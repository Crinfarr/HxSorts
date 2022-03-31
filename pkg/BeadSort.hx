package pkg;

import pkg.tools.ArrTools.sum;
import pkg.tools.ArrTools.max;

function sort(arr:Array<Int>):Array<Int> {
    var out:Array<Int> = [];
    var maxlist:Array<Int> = [for (_ in 0...max(arr)) 0];

    for (val in arr) {
        for (i in 0...val) maxlist[i]++;
    }

    for (_ in arr) {
        var layer:Int = sum([for (_ in maxlist.filter(function(a:Int) {return a>0;})) 1]);
        for (i in 0...maxlist.length-1) maxlist[i]--;
        out.push(layer);
    }
    return out;
}