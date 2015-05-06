/Developer Program
=============

Description
--------

The [official microsite of the /Developer Program](http://18f.github.io/API-All-the-X/), a project of [18F](http://18f.gsa.gov) API Engagement.  


How to contribute
--------

Please suggest further projects, ask questions, or otherwise share thoughts in [the issues tracker](https://github.com/18F/API-All-the-X/issues?state=open). Pull requests are welcome.

### Submitting a Pull Request

Please refer to [CONTRIBUTING.md](https://github.com/18F/API-All-the-X/blob/gh-pages/CONTRIBUTING.md) for instructions and guidelines.

### Submitting an Issue

We use the [GitHub issue tracker](https://github.com/18F/API-All-the-X/issues) to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a screenshot and any additional details that can help us debug, such as your operating system and browser version.

### Running the Site Locally on Your Computer

To run the site locally on your own computer (most helpful for previewing your own changes), you will need to install Jekyll and other dependencies:

If you don't already have Ruby and Bundler installed, follow the first two steps in these [Jekyll installation instructions](https://help.github.com/articles/using-jekyll-with-pages#installing-jekyll).

[Fork this repository to your GitHub account and clone it on your computer](http://help.github.com/fork-a-repo/).

Go to the root directory of the repo and install the dependencies:

    cd API-All-the-X
    bundle install

Run the Jekyll server and watch for file changes:

    jekyll serve --watch --baseurl ''

Your computer should now be serving your local copy of the site at:

[http://0.0.0.0:4000](http://0.0.0.0:4000).

