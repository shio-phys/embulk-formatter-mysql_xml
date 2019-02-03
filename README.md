# MySQL XML formatter plugin for Embulk

Embulk formatter plugin to output value for MySQL's `LOAD XML` statement.

https://dev.mysql.com/doc/refman/5.7/en/load-xml.html

## Overview

* **Plugin type**: formatter

## Configuration

- **root_element**: A element name of root element (string, required)
- **row_element**: A element name of row element (string, required)
- **timestamp_format**: Timestamp format for timestamp column (string, default: `%Y-%m-%d %H:%M:%S`)

## Example

```yaml
out:
  type: an output plugin supporting a formatter plugin such as `file`
  formatter:
    type: mysql_xml
    root_element: root
    row_element: row
```

## Build

```
$ rake
```
