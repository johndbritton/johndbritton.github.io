--- 
layout: post
title: Burn Your Drupal 6 RSS Feeds with FeedBurner & Apache mod_rewrite
created: 1209140547
category: geek
tags:
- drupal
- floss
- howto
redirects:
- /post/2008/april/25/burn_your_drupal_6_rss_feeds_feedburner_apache_mod_rewrite
- /node/6
---
As it stands the <a href="http://www.drupal.org">Drupal</a> <a href="http://www.feedburner.com">FeedBurner</a> <a href="http://drupal.org/project/feedburner">module</a> is not yet ready for the 6.x series. A simple workaround is to redirect Drupal feed requests (default: /rss.xml) to FeedBurner based on the <a href="http://en.wikipedia.org/wiki/User_agent">useragent</a> using Apache's mod_rewrite. The trick is to redirect all requests for the feed, with the exception of those made by the FeedBurner bot, to the <q>Burned</q> feed. You can repeat this for as many feeds as is necessary. Thanks to <a href="http://ckdake.com">ckdake</a> for the tip.

<strong>Example .htaccess snippet:</strong>
<code language="apache">
# Rewrite feed URL to FeedBurner
RewriteCond %{HTTP_USER_AGENT} !FeedBurner [NC]
RewriteRule rss\.xml http://feeds.feedburner.com/johndbritton [L] 
</code>
