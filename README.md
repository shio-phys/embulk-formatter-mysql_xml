# Mysql Xml formatter plugin for Embulk

TODO: Write short description here and embulk-formatter-mysql_xml.gemspec file.

## Overview

* **Plugin type**: formatter

## Configuration

- **option1**: description (integer, required)
- **option2**: description (string, default: `"myvalue"`)
- **option3**: description (string, default: `null`)

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: mysql_xml
    option1: example1
    option2: example2
```


## Build

```
$ rake
```
