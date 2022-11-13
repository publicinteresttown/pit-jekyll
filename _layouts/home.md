---
layout: default
---

<div class="content">
  {% if content %}
    <section class="post-content">
      {{ content }}
    </section>
  {% endif %}
  <section class="post-list">
    <h2>Recent Posts</h2>
    {% for post in site.posts %}
      <article class="post">
        <header class="post-header">
          <h3 class="post-title"><a href="{{ post.url }}">{{ post.title }}</a></h3>
        </header>
        <div class="post-content">
          {{ post.content | markdownify }}
        </div>
      </article>
    {% endfor %}
  </section>
</div>
<aside class="sidebar">

</aside>
