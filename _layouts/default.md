{%- assign timestamp = site.time | date: '%s' -%}
{%- assign bodyclass = "page-" | append: page.title | slugify -%}
{%- if page.collection -%}
  {%- assign collectionclass = "collection-" | append: page.collection | slugify -%}
  {%- assign bodyclass = bodyclass | append: ' ' | append: collectionclass -%}
{%- endif -%}
{%- if page.layout != "default" -%}
  {%- assign typeclass = "type-" | append: page.layout | slugify -%}
  {%- assign bodyclass = bodyclass | append: ' ' | append: typeclass -%}
{%- endif -%}
{%- if page.toc -%}
  {%- assign bodyclass = bodyclass | append: ' has-toc' -%}
{%- endif -%}
<!DOCTYPE html>
<html lang="{{ page.lang | default: site.lang | default: "en" }}">

<!----------------------------------------------------------------------------~>
 _____      _     _ _    _____     _                   _ ______
|  __ \    | |   | (_)  |_   _|   | |                 | |_   __|
| |__) |  _| |__ | |_  ___| |_ __ | |_____ _ __ __ ___| |_| | ___  _    _ _ ___
|  ___/| | |  _ \| | |/ __| | '_ \| __/ _ \ '__/_ \ __| __| |/ _ \| |  | | '_  \
| |  | |_| | |_) | | | (__| |_| | | ||  __/ ||  __/__ \ |_| | (_) | |/\| | | | |
|_|   \__,_|____/|_|_|\___|___| |_|\__\___|_| \___|___/\__|_|\___/|__/\__|_| |_|

                   <<<<>>>>>>           .----------------------------.
                _>><<<<>>>>>>>>>       /               _____________)
                \<<<<<  < >>>>>>>>>   /            _______________)
 -------======<=<<           <<<<<<<>/         _______________)
               << @    _/      <<<<</       _____________)
                 \    /  \      >>>/      ________)  ____
                  |  |   |       </      ______)____((- \\\\
                  o_|   /        /      ______)         \  \\\\    \\\\\\\
                       |  ._    (      ______)           \  \\\\\\\\\\\\\\\\
                       | /       `----------'    /       /     \\\\\\\     \\
               .______/\/     /                 /       /          \\\
              / __.____/    _/         ________(       /\
             / / / ________/`---------'         \     /  \_
            / /  \ \                             \   \ \_  \
           ( <    \ \                             >  /    \ \
            \/      \\_                          / /       > )
                     \_|                        / /       / /
                                              _//       _//
                                             /_|       /_|
<------------------------------------------------------------------------------>

<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  {%- seo -%}
  <link rel="stylesheet" href="{{ "/assets/css/main.css?" | append: timestamp | relative_url }}">
  <link rel="stylesheet" media="print" href="{{ "/assets/css/print.css?" | append: timestamp | relative_url }}">
  <link rel="alternate" type="application/atom+xml" title="{{ site.name }}" href="{{ site.url }}/feed.xml" />
</head>

<body class="{{ bodyclass }}">
  <div class="site">
    <header class="header">
      <nav class="navbar">
        <a class="navbar-brand" rel="author" href="/">{{ site.title | escape }}</a>
        <div class="description">
          A community for Public Interest Tech folks, Civic Tech people, Govpunks, and other civillian government folks.
        </div>
        <ul class="nav navbar-nav nav-pages">
          <li class="nav-item">
            <a class="nav-link" href="https://mastodon.publicinterest.town/">Mastodon</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://forms.gle/vLmejEZBpfWGW5if6">JOIN!</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://mastodon.publicinterest.town/explore">Members</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/docs/norms/">Norms</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/docs/code-of-conduct/">Code of Conduct</a>
          </li>
        </ul>
      </nav>
    </header>
    <section class="main">
      {{ content }}
    </section>
    <footer class="footer">
      <nav class="navbar">
        <ul class="nav nav-footer">
          <li class="nav-item">
            <a class="nav-link" href="/docs/privacy-policy/">Privacy Policy</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://github.com/publicinteresttown/pit-jekyll">Contribute to this Site</a>
          </li>
        </ul>
      </nav>
    </footer>
  </div>
</body>
</html>
