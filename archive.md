---
bg: "tag.jpg"
layout: page
permalink: /category/news/
title: "Новости"
crawlertitle: "Новости"
summary: "meow"
active: archive
---


{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}

  <ul class="news">
    {% for post in posts %}
        <li>
            <a href="{{ post.url | relative_url}}">{{ post.title }}</a>
            {{ post.content }}
            <span class="date">{{ post.date | date: "%d-%m-%Y"  }}</span>
        </li>
    {% endfor %}
  </ul>

{% endfor %}
