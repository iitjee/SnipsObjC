/*


*/




//Sorting Dictionary

There's no using sorting Dictionary (either by keys or values) as such. Because to retrieve, you either
call [mySortedDict allKeys] or [mySortedDict allValues] neither of which give any guarantee to retain the order!

To sort a Dictionary, you should always have an `sortedArray` of all the keys which in turn is used to sort the Dictionary!



