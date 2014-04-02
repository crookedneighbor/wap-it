# Wap It

<p align="center">
    <img src="http://i.imgur.com/yaezc8p.gif" />
</p>

`wap-it` is a micro vim plugin that helps insert `mocha` `.only`s in your tests.

## Installation

### Via Pathogen
`git clone https://github.com/muffs/wap-it.git ~/.vim/bundle`

### Via Vundle
Add `Bundle 'muffs/wap-it'` to your bundle file.

## Usage
`wap-it` binds two shortcuts for vim: `,wi` (wap `it`) and `,wd` (wap `describe`) lol.

![alt text](http://i.imgur.com/hYRuf2H.gif "wap-it demo")

`,wi` will find the closest `it` block in relation to the currently focused row. From there, it will then toggle the existence of an `only` statement.
`,wd` does the exact same thing for `describe` blocks.
