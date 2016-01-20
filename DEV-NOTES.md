# Development notes

## How to export source PDF to the master HTML file

1. Open source PDF in Acrobat
2. File > Save
3. Change Format to HTML using the settings shown below.
4. Save out the file.

![Acrobat HTML Settings](img/acrobat-html-settings.png)

## How to strip out the cruft
The HTML exported above has a lot of extra information that we'd like to remove. There are many ways to do the following. What is documented here is my workflow.

1. Open the file in Sublime Text 2.
2. Use [Sublime-HTMLPrettify](https://github.com/victorporof/Sublime-HTMLPrettify) to restructure the code into something readable.
3. Remove everything except for the content of the `<body>` tag. This includes removing the `<body>` tag itself.
4. Edit -> Line -> Reindent
5. Find and Replace with the following regexes — `style=\"(.*?)\"` and `class=\"(.*?)\"` replacing them with nothing.
6. Find and Replace the following to fix tags — `  >` and ` >` for `>`. This closing the space left from the actions above.