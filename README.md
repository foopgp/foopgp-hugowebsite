

This is a static website made with [hugo](https://gohugo.io).


## Structure

Almost all pages are in the [content/{language}](content/) subdirectories.

Some translations belong to the website and are in the [i18n](i18n/)
subdirectory, while some others belong to the theme (and are within it).

The theme(s) are in the [themes](themes/) subdirectory (and they should be git submodules).

(Alas) There are still some interdependencies between the themes and the hugo website and
its content :
 * the theme use the website images.
 * Some descriptions are in the theme while they could have been in the website,
   or vice versa.

## Languages feature - i18n support

When you choose a language in the menu bar, you switch content and should translate each page into all languages.

Fortunately our readers use to read multiple languages, and for the more dynamic
part of content, which are blog, events and training pages, the theme manage the
**lang** field present in [yaml
headers](https://cran.r-project.org/web/packages/ymlthis/vignettes/yaml-fieldguide.html).

Then if you want a page written in English, to be displayed in the "French"
website, just create a symlink from the French part, to this English page. Or
vice versa.

> $ cd content/french/blog/

> $ ln -s ../../english/blog/1970-01-01-my-first-article.md

## Develop and test this website at home

You should use a text editor which support [Markdown](https://en.wikipedia.org/wiki/Markdown)
syntaxes ([vim](https://www.vim.org/), etc.)

Then you should install [hugo](https://github.com/gohugoio/hugo/releases).

Then you should run:

> $ hugo server -D

To tell hugo to generate the static website, and make it run on your
[localhost](https://en.wikipedia.org/wiki/Localhost), with the draft pages
enabled.

