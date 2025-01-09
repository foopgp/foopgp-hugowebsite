

This is the website of the [Friends of Open PGP](https://foopgp.org) ([FoOPGP](https://foopgp.org) for those in the know), created with love and [hugo](https://gohugo.io).

## Structure

Almost all pages are located in the [content/{language}](content/) subdirectories.

Some translations belong to the website and are located in the [i18n](i18n/) subdirectory, while others belong to the theme (and are embedded within it).

The themes are located in the [themes](themes/) subdirectory (and they should be git submodules).

(Unfortunately) There are still some interdependencies between the themes, the Hugo website, and its content:
* the theme uses the website images.
* Some descriptions are in the theme, even though they could have been in the website, or vice versa.

## Languages feature - i18n support

When you choose a language from the menu bar, the content changes, and you need to translate each page into all languages.

Fortunately, our readers are used to reading multiple languages, and for the most dynamic content, such as the blog, events, and training pages, the theme manages the **lang** field in the [YAML headers](https://cran.r-project.org/web/packages/ymlthis/vignettes/yaml-fieldguide.html).

Thus, if you want a page written in English to be displayed on the "French" site, you simply need to create a symbolic link from the French part to this English page. Or vice versa.

```bash
$ cd content/french/blog/

$ ln -s ../../english/blog/1970-01-01-my-first-article.md
```

## Develop and test this website locally

You should use a text editor that supports [Markdown](https://en.wikipedia.org/wiki/Markdown) syntax (e.g., [vim](https://www.vim.org/), etc.).

Then, you need to install [hugo](https://github.com/gohugoio/hugo/releases).

Once installed, run the following command:

```bash
$ hugo server -D
```

This tells Hugo to generate the static website and run it on your [localhost](https://en.wikipedia.org/wiki/Localhost), with draft pages enabled.


### Clone the repository:
```bash
git clone https://codeberg.org/foopgp/foopgp-hugowebsite.git
cd foopgp-hugowebsite
```

### Install Hugo (if necessary):
```bash
sudo apt update
sudo apt install hugo
```

### Start the local server:
```bash
hugo server -D
```

### Configure your environment

#### To sign commits and push with SSH:
```bash
git config --global url.git@codeberg.org:.pushInsteadOf https://codeberg.org/
git config --global commit.gpgsign true
```

#### Add the two lines to replace the SSH agent with the GPG agent:
```bash
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
```

### Modify the content and commit the changes:
```bash
git add .
git commit -m "Your commit message"
git push
``` 