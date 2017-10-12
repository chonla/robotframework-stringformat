# StringFormat for Robot Framework

StringFormat is a string formatter for Robot Framework. This library is a python .format() wrapper.

## Usage

|                    |                |               |                                            |      |          |
| ------------------ | -------------- | ------------- | ------------------------------------------ | ---- | -------- |
| *** Settings ***   |                |               |                                            |      |          |
| Library            | StringFormat   |               |                                            |      |          |
| *** Test Cases *** |                |               |                                            |      |          |
| Format Text        |                |               |                                            |      |          |
|                    | ${url}=        | Format String | https://api.domain.com/users/{0}/sites/{1} | paul | internal |
|                    | Log To Console | ${url}        |                                            |      |          |

## Output

```
https://api.domain.com/users/paul/sites/internal
```

## Supported Format

StringFormat library utilizes python str.format method to construct formatted string. The format spec depends on what version of python this library being executed on. See the following resources for detail.

* Python 2: https://docs.python.org/2/library/string.html#format-string-syntax
* Python 3: https://docs.python.org/3.4/library/string.html#format-string-syntax

## License

MIT