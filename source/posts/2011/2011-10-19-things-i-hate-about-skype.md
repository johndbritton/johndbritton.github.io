---
layout: post
title: Things I Hate About Skype
category: geek
tags:
- skype
- usability
- mac
- rant
---
# It's no secret, Skype sucks.

Skype has really been driving me nuts lately. I don't willingly use it, but because of it's popularity and the remote nature of my work I don't really have a choice. Here's are a couple of problems and how I'm dealing with them. I'm currently running Skype version 5.4.0.1217 on OSX Lion 10.7.2.

# Microphone Volume Control

Because I'm a nomad, I work from coffee shops and restaurants quite frequently. It's not uncommon for these places to have loud background music and lots of chatter. I've struggled with communication because my microphone pics up almost all of the background noise. The obvious solution is to lower the microphone volume, but that only works for a few seconds. Skype has a feature called "automatic gain control" that listens to the level of your microphone and adjusts sensitivity accordingly. The problem is that it cannot be disabled and the adjustments it makes are just plain wrong. From my reading, there used to be a setting to control this in Skype's preferences but it has been removed.

__The fix__: Edit `~/Library/Application Support/Skype/shared.xml` and add `<AGC>0</AGC>` inside the `<VoiceEng></VoiceEng>` element. This will disable automatic gain control.

# Growl Notifications Are Broken

I recently upgraded to [Growl](http://growl.info/) 1.3, it adds the ability to pause notifications and also rolls up missed notifications after a period of inactivity. Now Skype's notifications aren't sent through growl. Usually I would blame this on the Growl developers for breaking backward compatibility, but I'm pretty sure Skype is at fault here since every other Growl enabled application I use works with the new version.

__The fix__: Disable all notifications in Skype. I don't use it for chat, so I'm not missing anything but the sign-on and sign-off messages.

