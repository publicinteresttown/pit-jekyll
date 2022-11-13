---
layout: default
---
{% if page.toc %}
  <aside class="toc-sidebar sidebar">
    <header>
      <h2 class="accordion-header">
          Table of Contents
      </h2>
    </header>
    <div class="toc-content">
    {% include toc.html html=content %}
    </div>
  </aside>
{% endif %}

<article class="post-single content">

  <header class="page-header">
    <h1>{{ page.title | escape }}</h1>
  </header>

  <section>
    {{ content }}
  </section>

</article>
