---
layout: page
title: "Site News"
---


{% comment %}

{% endcomment %}

<div id="home">
  <ul class="posts">
    {% for post in site.posts %}
      <li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> 
      &nbsp;
      <span class="post-date">{{ post.date | date_to_string }}</span></li>
    {% endfor %}
  </ul>
</div>


