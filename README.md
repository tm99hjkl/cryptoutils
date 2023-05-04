# cryptoutils
CTFのcryptoの簡単な問題をシェル上で素早く解くためのツール

# usage
**anal : frequency analysis of a text file.**

```
$ cat a.txt
foo
foo
foo
bar
foo
bar
foo
baz
bar
foo
baz
foo
foo
$ anal a.txt
%       count   line
.64285  9       foo
.21428  3       bar
.14285  2       baz
```

**b2l : bytes to long**

```
$ echo "hello world" | b2l
126207244316550804821666916
```

**l2b : long to bytes**

```
$ echo "hello world" | b2l | l2b
hello world
```

**nthroot : calculate nthroot**
```
$ nthroot 64640475367413925987484705973690062806045622817770253664507778558396303549931817223904736968366216901930186302243724698880505597782349805406309 3 | l2b
FLAG{example_flag!!}
```

**to2 : decimal to binary**
```
$ echo 314159265358979 | to2
1000111011011100111100111011010100010010010000011
```

**to16 : decimal to hex**
```
$ echo 3735928559 | to16
DEADBEEF
```

**caesars : caesar cipher**
```
$ caesars | grep cpaw
fsdz{Fdhvdu_flskhu_lv_fodvvlfdo_flskhu}
cpaw{Caesar_cipher_is_classical_cipher}
```
