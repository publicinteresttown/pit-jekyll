---
layout: default
---
<article class="post-single content">

  <header class="page-header">
    <h1>{{ page.title | escape }}</h1>
    <span class="post-date">{{ post.date | date: site.date_format }}</span>
  </header>

  <section>
    {{ content }}
  </section>

</article>
