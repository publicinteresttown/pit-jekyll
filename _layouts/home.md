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
          <span class="post-date">{{ post.date | date: "%B %-d, %Y" }}</span>
        </header>
        <div class="post-content">
          {{ post.content | markdownify }}
        </div>
      </article>
    {% endfor %}
  </section>
</div>
<aside class="sidebar">
  <h2>Public Interest Jobs</h2>
  <div class="jobs">
    {% if site.data.feeds.jobs %}
      {% for job in site.data.feeds.jobs %}
        <article class="job">
          <header class="job-header">
            <a href="{{ job.link }}">
              <span class="job-date">{{ job.date | date: "%B %-d, %Y" }}</span>
            </a>
          </header>
          <section class="job-description">
            {{ job.description }}
          </section>
        </article>
      {% endfor %}
    {% else %}
    <p>No jobs at this time.</p>
    {% endif %}
  </div>
</aside>
