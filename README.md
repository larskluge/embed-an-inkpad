# embed-an-inkpad

Ruby gem to allow an simple embedding of a rendered Inkpad document within your custom Rails project.


## Why?

Ever experienced you had to build a custom static page into your Rails project and all the information you got provided were in a Word document? Yeah, what a fun task. Better: ever experienced the same person needed this page in the first place made an update somewhere in this xx pages long document—and you have to find the difference to get it online? Yep, even more fun.

`embed-an-inkpad` allows to embed the rendered content of a document hosted on [Inkpad.io](https://www.inkpad.io) in your Rails project. Simple embedding with one line of code, never be bothered with updates anymore since the requester herself is able to make updates w/o a developer involved anymore.


## Usage

Add dependency in your `Gemfile` & run `bundle`:

    gem 'embed-an-inkpad'

Then use it somewhere in your view files: `app/views/**/*`

    <h1>My Website</h1>
    <%= embed_an_inkpad "lJ2wS79HC" %>

On gem require a Rails view helper named `embed_an_inkpad` is included. The only parameter is an Inkpad id to refer to your document you like to include. In this example, the document [lJ2wS79HC](https://www.inkpad.io/lJ2wS79HC) is included.


## TODO's

- Caching
- Specs


## MIT License

Copyright (c) 2015 Lars Kluge

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
