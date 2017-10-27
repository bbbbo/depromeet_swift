# Chapter9 - 배열

- 배열은 다른 언어에서 사용 되는 방식과 비슷하다. 주로 그냥 Array로 사용하지 않고 JSONArray를 담기위해서 많이 사용되는거 같음.
```
var bucktList: [String] = []
```

- 배열에서는 특별히 다른 점은 찾기 힘들다. 그래도 다른 점은 찾자면 배열을 내용을 지울떄 remove를 사용하는것 동일하나  at이라는 키워드? 를 사용함.

```
var bucktList: [String] = ["CLimb Mt. Everst"]
bucktList.append("Fly hot air balloon to Fiji")

bucktList.remove(at: 1)
print(bucktList[bucktList.count - 1])            //CLimb Mt. Everst

```
