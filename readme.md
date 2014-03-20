*This repository is a mirror of the [component](http://component.io) module [chemzqm/pen](http://github.com/chemzqm/pen). It has been modified to work with NPM+Browserify. You can install it using the command `npm install npmcomponent/chemzqm-pen`. Please do not open issues or send pull requests against this repo. If you have issues with this repo, report it to [npmcomponent](https://github.com/airportyh/npmcomponent).*
# Pen Editor

- This a fork of [sofish/pen](http://sofish.github.io/pen/) with component support and API changed, also cleaned doc.
- **LIVE DEMO:** [http://chemzqm.github.io/pen](http://chemzqm.github.io/pen)
- **Markdown is supported**

## Install

Using [component](http://github.com/component/componet)

```
component install chemzqm/pen
```

## Example

``` js
  var Pen = require('pen');
  var el = document.getElementById('pen');
  new Pen(el, {
    class: 'pen', // {String} class of the editor,
    debug: false, // {Boolean} false by default
    textarea: '<textarea name="content"></textarea>', // fallback for old browsers
    list: [
      'blockquote', 'h2', 'h3', 'p', 'insertorderedlist', 'insertunorderedlist',
      'indent', 'outdent', 'bold', 'italic', 'underline', 'createlink'
    ], // editor menu list
    stay: true
  })
```

## API

### new Pen(el, [option])

Init Pen with `el` (dom element or element idd) and optional option.

To customize toolbar, you can set `options.list` to an `Array`, add the following strings to make your own:

- `blockquote`, `h2`, `h3`, `p`, `pre`: create a tag as its literal meaning
- `insertorderedlist`: create an `ol>li` list
- `insertunorderedlist`: create a `ul>li` list
- `indent`: indent list / blockquote block
- `outdent`: outdent list / blockquote block
- `bold`: wrap the text selection in a `b` tag
- `italic`: wrap the text selection in an `i` tag
- `underline`: wrap the text selection in a `u` tag
- `createlink`: insert link to the text selection
- `inserthorizontalrule`: insert a `hr` tag

### destroy()

Destroy the editor.

### rebuild()

Make the editor work again.


## Usage
To use it, you can type `action cmd` + `space key` at a line start. like: 

```
### This will create a h3 tag
```

The following cmds are allowed: 

- Headings: type 1~6 `#` at the line start
- Unordered List: type `- ` or `* `
- Ordered List: type `1. `
- Code block: type **\`\`\`**
- Block Quote: type `> `
- Horizontal Rule: more than 3 `-`, `*`, `.` will create a `<hr />`, like `......`

## Prevent unsafe page redirect

By default, Pen will prevent unsafe page redirect when editing, to shut down it, specific `options.stay` to `false`.

__NOTE:__ if `defaults.debug` is set to `true` and `default.stay` is not set: `defaults.stay == !defaults.debug`.

## license

Licensed under MIT.
