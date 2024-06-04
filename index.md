---
title: (emacs-berlin)
layout: default
---
{::options parse_block_html="true" /}

<section id="above-fold"><div class="row"><div class="large-12 columns intro-info">

{:#emacs-berlin-lockup width="300px"}
![emacs-berlin logo](img/emacs-berlin.png)

</div></div></section>

<section id="below-fold"><div class="row"><div class="medium-8 columns">

# June 11, 2024 Meetup (Offline-only meetup)

In addition to our scheduled monthly meetup, we are organizing an additional
offline-only meetup on June 11th, 2024.

### Location

[c-base](https://c-base.org/impressum) (Rungestraße 20, 10179 Berlin,
[OSM link](https://www.openstreetmap.org/node/260050809)) in the
Seminarraum/Haeutungskabine, starts at 19:00 CEST. Hosted by Berber.

# June 26th, 2024 Meetup

Our next meetup is going to be on Wednesday, June 26th. Most likely
hybrid again.

Want to do a presentation or an impromptu show-and-tell? Both are
welcome. If you want to do a longer presentation, please let us know
on the mailing list beforehand.


### Location

In person: [c-base](https://c-base.org/impressum) (Rungestraße 20, 10179 Berlin,
[OSM link](https://www.openstreetmap.org/node/260050809)) in the
Seminarraum/Haeutungskabine, starts at 19:00 CET. Hosted by Berber.

Video: [Jitsi Room](https://jitsi.emacs-berlin.org/june-2024), starts
at 19:00 CEST (maybe room is open a bit earlier).

### About Emacs Berlin

We are Emacs enthusiasts in Berlin, meeting every last Wednesday of
the month (`<%%(diary-float t 3 -1)>` in org-mode).

The best way to stay posted is through our mailing list. [Sign up][ml]
and meet your fellow Emacsers, or have a look at the [mailing list
archives][mla] ([gmane][mlag]). The main language on the list is
English.

Feel free to send an email introducing yourself after subscribing!

We're on mastodon: [@emacs@toot.berlin](https://toot.berlin/@emacs)

You can also chat with us on IRC:
[#emacs-berlin](irc://chat.libera.chat/emacs-berlin) (on Libera.Chat)

Videos on PeerTube [Diode Zone](https://diode.zone/c/emacs_berlin_talks/videos) and
on [YouTube](https://www.youtube.com/channel/UC1O8700SW-wuC4fvDEoGzOw)
<span class='text-cursor'>&nbsp;</span>

Non-public contact via email: [organizers email][contact]

</div>
<div class="medium-4 columns">
### Upcoming

* Wednesday, June 26th 2024
* Wednesday, July 31st 2024
* Wednesday, August 28th 2024

<!--
* Wednesday, September 25th 2024
* Wednesday, October 30th 2024
* Wednesday, November 27th 2024
* Wednesday, December 25th 2024

To generate in Ruby, needs ActiveSupport:
puts (Date.new(2024)..Date.new(2024).end_of_year)
  .select {|d| d.wednesday?}
  .group_by(&:month).values.map(&:last)
  .map {|d| d.strftime("%A, %B #{d.day.ordinalize} %Y")}.join("\n")
-->

(if you see a past date here, see [mailing list][mla])

### Archive

[Archive of previous meetings](/archive.html)

</div></div></section>

<section id="end-fold"><div class="row"><div class="large-12 columns">

## Beginner's Guarantee

If you would like a basic introduction to Emacs, or you're starting
out and have some questions, then we are more than happy to help
you. Just show up to a meeting, and we guarantee there will be
somebody to help you up to speed.

## Talks

Talks are 20 minutes + 5 min Q&A, and should be loosely related to Emacs.
Lightning talks are 5 minutes + 5 minutes Q&A, and can be about anything. The
only "rule" for lightning talks is "keep it short, keep it interesting".

At the moment the best place to propose talks is on the [mailing list][ml].

<!-- ## Format -->

<!-- We try to keep the structure pretty loose, we are not the typical -->
<!-- "three half hour talks" type of user group. There are often small -->
<!-- impromptu presentations or demos. For the rest people just hack -->
<!-- together on whatever they find interesting, help each other to make -->
<!-- their Emacs setups even more awesome, or chat about whatever they've -->
<!-- been up to, Emacs related, or not. -->

<!-- [GitHub Issues][ghi] and the [mailing list][ml] can be used to propose -->
<!-- topics. -->

## Code of Conduct

Emacs Berlin has adopted the
[Berlin Code of Conduct](https://berlincodeofconduct.org/), all who attend our
events or participate on our mailing list are expected to have read this
document, and to behave accordingly.

<!-- ## Members -->

<!-- People that show up to our meetings regularly or on occasion. Links go -->
<!-- to their emacs config. -->

<!-- * [plexus](https://github.com/plexus/.emacs.d) -->
<!-- * [pxlpnk](https://github.com/pxlpnk/emacs.d) -->
<!-- * [febeling](https://github.com/febeling/emacsd) -->
<!-- * [Jano](https://github.com/janogonzalez/.emacs.d) -->
<!-- * [Stefan](https://www.skamphausen.de/cgi-bin/ska/My_Configuration_of_Emacsen) -->
<!-- * [Diez](https://bitbucket.org/deets/emacs-git) -->
<!-- * [Jack](https://github.com/jackrusher/dotemacs) -->
<!-- * [til](https://tils.net/init.el.txt) -->
<!-- * [Peter](https://github.com/ptrv/emacs.d) -->
<!-- * [Andreas](https://github.com/andreas-roehler/werkstatt) -->

</div></div></section>

[ml]: https://mailb.org/mailman/listinfo/emacs-berlin "Mailing List"
[mla]: https://mailb.org/pipermail/emacs-berlin/ "Mailing List Archive"
[mlag]: news://news.gmane.io/gmane.org.user-groups.emacs.berlin
[contact]: mailto:emacs-berlin-owner@emacs-berlin.org "Send an email to organizers"
[ghi]: https://github.com/emacs-berlin/emacs-berlin.org/issues "emacs-berlin GitHub Issues"
