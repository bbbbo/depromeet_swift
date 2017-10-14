# Chapter7 - 문자열

- swift에서는 obj와 달리 문자열 다루는 법이 매우 간단하다.

```
//swift
let playground = "hello, playground"
var mutablePlayground = "Hello, mutable playground"

mutablePlayground += "!"

//obj
NSString *playground = @"hello, playgorund";
NSString *mutablePlayground = @"Hello, mutable playground";

mutablePlayground = [mutablePlayground stringByAppendingString:@"!"];
```


