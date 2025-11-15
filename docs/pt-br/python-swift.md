# ✅ Tabela de equivalência: Python built-ins → Swift

Se você vem do Python e está migrando para Swift, uma das primeiras diferenças que percebe é o modo como cada linguagem trata suas funções nativas (built-ins).

Enquanto o Python possui mais de 70 funções globais, o Swift distribui essas funcionalidades entre inicializadores, métodos e tipos da biblioteca padrão.

Neste artigo, você vai encontrar um **guia completo** com os **equivalentes Swift para as principais funções built-in do Python**, com tabelas de comparação e exemplos reais de código Swift.

## 🅰️ Funções iniciadas com A

| Python      | Swift                         |
| ----------- | ----------------------------- |
| `abs(x)`    | `abs(x)`                      |
| `all(iter)` | `iter.allSatisfy { $0 }`      |
| `any(iter)` | `iter.contains { $0 }`        |
| `ascii()`   | —                             |
| `aiter()`   | — *(Swift usa AsyncSequence)* |
| `anext()`   | `await iterator.next()`       |

### `abs()`

#### Python

```python
print(abs(-10)) # 10.
```

#### Swift

```swift
print(abs(-10)) // 10.
```

### `all()` e `any()`

#### Python

```python
vals = [True, True, False]

print(all(vals)) # False.
print(any(vals)) # True.
```

#### Swift

```swift
let vals = [true, true, false]

print(vals.allSatisfy { $0 }) // false.
print(vals.contains { $0 }) // true.
```

---

## 🅱️ Funções iniciadas com B

| Python         | Swift                 |
| -------------- | --------------------- |
| `bin(x)`       | `String(x, radix: 2)` |
| `bool(x)`      | `Bool(x)`             |
| `breakpoint()` | `breakpoint()`        |
| `bytearray()`  | `Data()`              |
| `bytes()`      | `Data`                |

### `bin()`

#### Python

```python
bin(10) # '0b1010'.
```

#### Swift

```swift
String(10, radix: 2) // "1010".
```

### `bool()`

#### Python

```python
bool(1) # True.
bool(0) # False.
```

#### Swift

```swift
Bool(1) // true (opcional).
1 != 0 // true.
```

---

## 🅲 Funções iniciadas com C

| Python          | Swift                          |
| --------------- | ------------------------------ |
| `chr(i)`        | `Character(UnicodeScalar(i)!)` |
| `classmethod()` | `static func`                  |
| `complex()`     | —                              |
| `compile()`     | —                              |
| `callable()`    | —                              |

### `chr()` e `ord()`

#### Python

```python
chr(65) # 'A'.
ord('B') # 66.
```

#### Swift

```swift
let c = Character(UnicodeScalar(65)!) // "A".
let code = "B".unicodeScalars.first!.value // 66.
```

---

## 🅳 Funções iniciadas com D

| Python         | Swift            |
| -------------- | ---------------- |
| `dict()`       | `[Key: Value]`   |
| `divmod(a, b)` | `(a / b, a % b)` |
| `delattr()`    | —                |
| `dir()`        | —                |

### dict()

#### Python

```python
d = {"name": "Alice", "age": 20}
```

#### Swift

```swift
let d: [String: Any] = ["name": "Alice", "age": 20]
```

### `chr()` e `ord()`

#### Python

```python
chr(65) # 'A'.
ord('B') # 66.
```

#### Swift

```swift
let c = Character(UnicodeScalar(65)!) // "A".
let code = "B".unicodeScalars.first!.value // 66.
```

### `divmod()`

### Python

```python
divmod(10, 3) # (3, 1).
```

### Swift

```swift
let result = (10 / 3, 10 % 3) // (3, 1).
```

---

## 🅴 Funções iniciadas com E

| Python        | Swift                          |
| ------------- | ------------------------------ |
| `enumerate()` | `.enumerated()`                |
| `eval()`      | — *(não existe por segurança)* |
| `exec()`      | —                              |

### `enumerate()`

#### Python

```python
for i, item in enumerate(["a", "b", "c"]):
    print(i, item)
```

#### Swift

```swift
for (i, item) in ["a", "b", "c"].enumerated() {
    print(i, item)
}
```

---

## 🅵 Funções iniciadas com F

| Python        | Swift                    |
| ------------- | ------------------------ |
| `filter()`    | `.filter {}`             |
| `float(x)`    | `Double(x)` / `Float(x)` |
| `format()`    | `String(format:)`        |
| `frozenset()` | —                        |

### `filter()`

#### Python

```python
nums = [1, 2, 3, 4]
evens = list(filter(lambda x: x % 2 == 0, nums))
```

#### Swift

```swift
let nums = [1, 2, 3, 4]
let evens = nums.filter { $0 % 2 == 0 }
```

### `format()`

#### Python

```python
format(3.14159, ".2f")   # '3.14'.
```

#### Swift

```swift
String(format: "%.2f", 3.14159)   // "3.14".
```

---

## 🅶 Funções iniciadas com G

| Python      | Swift |
| ----------- | ----- |
| `getattr()` | —     |
| `globals()` | —     |

Python functions como `getattr`, `globals`, `hasattr` não possuem equivalentes diretos em Swift, pois Swift é estaticamente tipado e não fornece metaprogramação dinâmica com strings.

## 🅷 Funções iniciadas com H

| Python      | Swift                  |
| ----------- | ---------------------- |
| `hasattr()` | —                      |
| `hash()`    | `.hashValue`           |
| `help()`    | —                      |
| `hex(x)`    | `String(x, radix: 16)` |

### `hex()`

#### Python

```python
hex(255) # '0xff'.
```

### Swift

```swift
String(255, radix: 16) // "ff".
```

---

## 🅸 Funções iniciadas com I

| Python         | Swift                   |
| -------------- | ----------------------- |
| `id(obj)`      | `ObjectIdentifier(obj)` |
| `input()`      | `readLine()`            |
| `int(x)`       | `Int(x)`                |
| `isinstance()` | `x is T`                |
| `issubclass()` | `A is B.Type`           |
| `iter()`       | `.makeIterator()`       |

### `input()`

#### Python

```python
name = input("Name: ")
```

#### Swift

```swift
print("Name: ", terminator: "")
let name = readLine()
```

### `isinstance()`

#### Python

```python
isinstance("oi", str) # True.
```

#### Swift

```swift
"oi" is String // true.
```

---

## 🅻 Funções iniciadas com L

| Python     | Swift    |
| ---------- | -------- |
| `len()`    | `.count` |
| `list()`   | `Array`  |
| `locals()` | —        |

### `len()`

#### Python

```python
len([1, 2, 3]) # 3.
```

#### Swift

```swift
[1, 2, 3].count // 3.
```

---

## 🅼 Funções iniciadas com M

| Python         | Swift     |
| -------------- | --------- |
| `map()`        | `.map {}` |
| `max()`        | `.max()`  |
| `memoryview()` | —         |
| `min()`        | `.min()`  |

### `map()`

#### Python

```python
list(map(lambda x: x * 2, [1, 2, 3]))
```

#### Swift

```swift
[1, 2, 3].map { $0 * 2 }
```

---

## 🅽 Funções iniciadas com N

| Python   | Swift     |
| -------- | --------- |
| `next()` | `.next()` |
| `None`   | `nil`     |

### `next()`

#### Python

```python
it = iter([1, 2, 3])
next(it) # 1.
```

#### Swift

```swift
var it = [1, 2, 3].makeIterator()
it.next() // 1.
```

---

## 🅾️ Funções iniciadas com O

| Python     | Swift                           |
| ---------- | ------------------------------- |
| `object()` | `AnyObject`                     |
| `oct(x)`   | `String(x, radix: 8)`           |
| `open()`   | `FileHandle` / `FileManager`    |
| `ord(c)`   | `c.unicodeScalars.first!.value` |

### `open()`

#### Python

```python
with open("file.txt") as f:
    print(f.read())
```

#### Swift

```swift
import Foundation

if let data = FileManager.default.contents(atPath: "file.txt") {
    print(String(data: data, encoding: .utf8)!)
}
```

---

## 🅿️ Funções iniciadas com P

| Python       | Swift                   |
| ------------ | ----------------------- |
| `pow()`      | `pow()`                 |
| `print()`    | `print()`               |
| `property()` | propriedades computadas |

### `pow()`

#### Python

```python
pow(2, 3) # 8.
```

#### Swift

```swift
pow(2.0, 3.0) // 8.
```

### `print()`

### Python

```python
print("Hello")
```

### Swift

```swift
print("Hello")
```

---

## 🆁 Funções iniciadas com R

| Python       | Swift                 |
| ------------ | --------------------- |
| `range()`    | `0..<n`, `stride()`   |
| `repr()`     | `String(describing:)` |
| `reversed()` | `.reversed()`         |
| `round()`    | `round()`             |

### `range()`

#### Python

```python
for i in range(0, 5):
    print(i)
```

#### Swift

```swift
for i in 0..<5 {
    print(i)
}
```

### `reversed()`

#### Python

```python
list(reversed([1, 2, 3]))
```

#### Swift

```swift
Array([1, 2, 3].reversed())
```


---

## 🆂 Funções iniciadas com S

| Python           | Swift           |
| ---------------- | --------------- |
| `set()`          | `Set()`         |
| `setattr()`      | —               |
| `slice()`        | `[start..<end]` |
| `sorted()`       | `.sorted()`     |
| `staticmethod()` | `static func`   |
| `str()`          | `String()`      |
| `sum()`          | `.reduce(0, +)` |
| `super()`        | `super.init()`  |

### `set()`

#### Python

```python
set([1, 2, 2, 3])
```

#### Swift

```swift
Set([1, 2, 2, 3])
```

### `sorted()`

#### Python

```python
sorted([3, 1, 2])
```

#### Swift

```swift
[3, 1, 2].sorted()
```

### `sum()`

#### Python

```python
sum([1, 2, 3]) # 6.
```

#### Swift

```swift
[1, 2, 3].reduce(0, +) // 6.
```

---

## 🆃 Funções iniciadas com T

| Python    | Swift       |
| --------- | ----------- |
| `tuple()` | `(a, b, c)` |
| `type(x)` | `type(of:)` |

### `tuple()`

#### Python

```python
t = (1, "a")
```

#### Swift

```swift
let t = (1, "a")
```

### `type()`

#### Python

```python
type("abc") # <class 'str'>.
```

#### Swift

```swift
type(of: "abc") // String.Type.
```

---

## 🆅 Funções iniciadas com V

| Python   | Swift |
| -------- | ----- |
| `vars()` | —     |

---

## 🆉 Funções iniciadas com Z

| Python  | Swift   |
| ------- | ------- |
| `zip()` | `zip()` |

### `zip()`

#### Python

```python
for a, b in zip([1,2], ["a", "b"]):
    print(a, b)
```

#### Swift

```swift
for (a, b) in zip([1,2], ["a", "b"]) {
    print(a, b)
}
```

---
