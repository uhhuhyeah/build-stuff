# Build Stuff - a book about making things with computers

## SETUP
You'll need to be on a relatively modern platform with both Ruby
(+ RubyGems) and Python (+ pip).  Once you're there, install a few
things:

    gem install jekyll
    pip install pygments


## BUILD
To rebuild the static site, just invoke Jekyll:

    jekyll


## DEVELOP
To serve the site and have it automatically rebuild when files change,
run Jekyll like so:

    jekyll --auto --server
