---
bg: "tag.jpg"
layout: page
permalink: /category/news/
title: "Новости"
crawlertitle: "Новости"
summary: "Будьте в курсе"
active: archive
---

  <ul class="news">
    {% for post in site.posts %}
        <li>
            <a href="{{ post.url | relative_url}}">{{ post.title }}</a>
            <span class="date">{{ post.date | date: "%d-%m-%Y"  }}</span>
            {{ post.content }}
        </li>
        {% endfor %}
  </ul>
