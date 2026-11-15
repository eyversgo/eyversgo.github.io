<h1 align="center">eyversgo.github.io</h1>

<p align="center">
  Personal portfolio of Eyver Gómez, a design-driven software engineer.
</p>

<p align="center">
  <a href="https://eyversgo.github.io/"><b>Live site</b></a> ·
  <sub>English · <a href="README-ES.md">Español</a></sub>
</p>

## Overview

A single static page written in plain HTML, CSS and JavaScript, with no build step. Each section opens as an expandable row and has its own clean URL (`/apple-rebuilt`, `/about`, `/contact`). The page opens in English, and the ES/EN switch remembers the visitor's choice.

| Section | Route |
| :-- | :-- |
| Work 01: Apple Rebuilt | `/apple-rebuilt` |
| About me | `/about` |
| Experience | `/experience` |
| Education | `/education` |
| Skills | `/skills` |
| Credentials | `/certificates` |
| Contact | `/contact` |

GitHub Pages serves a copy of `index.html` from each route folder, and `404.html` covers any other path.

## Run it locally

On Windows, double-click **`start.bat`**. It serves the folder at `http://127.0.0.1:5500/` and opens it in your browser. It uses Python if it is installed and falls back to Node.js.

On any system:

```sh
git clone https://github.com/eyversgo/eyversgo.github.io.git
cd eyversgo.github.io
python -m http.server 5500
```

## Deployment

The repository is published with GitHub Pages from the `main` branch. Every push updates the site.
