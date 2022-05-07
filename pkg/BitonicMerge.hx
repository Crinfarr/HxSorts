package pkg;

function sort(arr:Array<Int>):Array<Int> {
    var out:Array<Int> = [];
    var a:Int = 2;
    while (a <= arr.length) {
        var b:Int = Math.floor(a/2);
        while (b >= 0) {
            for (i in 0...arr.length-1) {
                var l = i^b;
                if (l > i) {
                    if ((i&a == 0)) {}
                }
            }
            b = Math.floor(b/2);
        }
        a *= 2;
    }
    return out;
}