---
layout: post
title: "Let's Talk TED Talks"
category: education
tags:
- p2pu
- education
- TED
- experiment
---
I've had this idea for a while, but I haven't really written about it anywhere yet. The 2011 P2PU Workshop in Berlin is right around the corner. Each attendee is supposed to bring at least one concrete idea and make it happen. This is mine. Sign up to join the group when it starts.

<a href="http://bit.ly/lets-talk-ted-talks-form" class="cta-button" target="_new">Sign up for "Let's Talk TED Talks"</a>

# TED Talks spark discussion.
Every time I watch a TED Talk I want to discuss it. Inevitably this leads to me telling my friends about it and my related ideas before ending with "just watch the video." Sometimes they watch right away, sometimes they don't watch at all. Regardless, I always have to wait before I can find someone to talk to about all my new ideas.

# It's like a book club.
One solution to this problem would be to watch the TED Talks in a group, sort of like a book club. It's a simple solution to a simple problem but it introduces overhead. Someone has to select the talks, manage the schedule, remind the group members when to watch, and shepherd discussions. There's also an upper limit on group size if you want to have a strong relationship with each member.

# Can we automate the boring stuff?
One person can easily manage all of the organizational tasks for a group at the cost of having a single point of failure. If the leader goes away it's likely that the group will disband. To avoid a single point of failure, why not automate the organizational tasks? We can write a simple program that manages everything that happens in the group. Here's how it works:

# Suggest a TED talk when you sign up.
Each person who decides to participate in "Let's Talk TED Talks" must submit a URL to a TED Talk that they think is particularly interesting along with three related discussion topics. Once ten people have signed up, a group is created and the first ten people that signed up are added to the group. A new group is created after every tenth signup.

# Introduce yourself.
Group members receive a notification that ten people have joined. A new discussion topic is created and participants are asked to introduce themselves to the group.

# Watch one TED Talk each week for ten weeks.
Each week follows the same schedule, the only thing that changes is content. The talks and discussion topics were selected by the participants as they signed up.

* __Sunday__: Participants are sent a link to the TED Talk of the week, and asked to watch it.
* __Monday__: Discussion topic one is posted. Participants are notified of discussion activity.
* __Wednesday__: Discussion topic two is posted. Participants are notified of discussion activity.
* __Friday__: Discussion topic three is posted. Participants are notified of discussion activity.

At the end of ten weeks, the group disbands and there is a record of participation for each talk and discussion.

# How should I build this?
This is an example of an application that can facilitate a learning group that will scale with demand. If 100 people sign up, 10 groups will be created. If 1,000 people sign up, 100 groups will be created. I could easily build this as a standalone application, but I think it's more interesting to think about this as a single use case for a P2PU API.

# Let's expose a P2PU API.
We don't need a ton of API functionality to make this possible. Here's list of the minimal API primitives required to build this.
* Registration (& confirmation)
* Group
* Discussion
* Notification

# About P2PU
<a href="http://bit.ly/lets-talk-ted-talks-form" class="cta-button" target="_new">Sign up for "Let's Talk TED Talks"</a>

> The [Peer 2 Peer University](http://p2pu.org) is a grassroots open education project that organizes learning outside of institutional walls and gives learners recognition for their achievements. P2PU creates a model for lifelong learning alongside traditional formal higher education. Leveraging the internet and educational materials openly available online, P2PU enables high-quality low-cost education opportunities.