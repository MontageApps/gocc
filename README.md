# gocc - Golang version OpenCC
This is forked from https://github.com/liuzl/gocc.

## Usage 使用
```go
package main

import (
    "fmt"
    "log"
    
    "github.com/MontageApps/gocc"
)

func main() {
    s2t, err := gocc.New("s2t")
    if err != nil {
        log.Fatal(err)
    }
    in := `自然语言处理是人工智能领域中的一个重要方向。`
    out, err := s2t.Convert(in)
    if err != nil {
        log.Fatal(err)
    }
    fmt.Printf("%s\n%s\n", in, out)
    //自然语言处理是人工智能领域中的一个重要方向。
    //自然語言處理是人工智能領域中的一個重要方向。
}
```
## Conversions
* `s2t` Simplified Chinese to Traditional Chinese
* `t2s` Traditional Chinese to Simplified Chinese
* `s2tw` Simplified Chinese to Traditional Chinese (Taiwan Standard)
* `tw2s` Traditional Chinese (Taiwan Standard) to Simplified Chinese
* `s2hk` Simplified Chinese to Traditional Chinese (Hong Kong Standard)
* `hk2s` Traditional Chinese (Hong Kong Standard) to Simplified Chinese
* `s2twp` Simplified Chinese to Traditional Chinese (Taiwan Standard) with Taiwanese idiom
* `tw2sp` Traditional Chinese (Taiwan Standard) to Simplified Chinese with Mainland Chinese idiom
* `t2tw` Traditional Chinese (OpenCC Standard) to Taiwan Standard
* `t2hk` Traditional Chinese (OpenCC Standard) to Hong Kong Standard
