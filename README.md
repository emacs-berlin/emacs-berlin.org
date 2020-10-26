emacs-berlin.org
================

emacs-berlin.org website

Running this page:

```ruby
bundle install

bundle exec jekyll serve --watch
```

Any changes pushed to the `gh-pages` branch will be published
automatically.


## Jitsi Setup

This repo contains provisioning and configuration for a jitsi server.
Mainly for documentation and feedback, as obviously some of those
steps require credentials.

To provision, run:

    cd terraform
    terraform apply

To configure, run:

    cd ansible
    ansible-playbook jitsi.yml
