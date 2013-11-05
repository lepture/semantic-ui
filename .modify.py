#!/usr/bin/env python

with open('index.js', 'r') as f:
    content = f.read()
    content = '\n'.join([
        "var jQuery = require('jquery')",
        content,
        "module.exports = jQuery;"
    ])

with open('index.js', 'w') as f:
    f.write(content)

with open('semantic-ui.css', 'r') as f:
    content = f.read()
    content = content.replace('../fonts/', 'fonts/');
    content = content.replace('../images/', 'images/');

with open('semantic-ui.css', 'w') as f:
    f.write(content)
