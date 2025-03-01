---
date: 2025-02-28
---

# Towards a useful definition of agents

Some have proclaimed 2025 the Year of Agents. And yet I can't escape the sense that no one quite knows what we're talking about when we say "agents". "They're...well, you know..." *gestures vaguely in the direction of Devin and mutters something about tool use and loops* Some offered definitions that fit in tweets; others required thousand word blog posts. As Chip Huyen points out, Peter Norvig and Stuart Russell provide a reasonably satisfactory answer in *Artificial Intelligence: A Modern Approach*:

> An agent is anything that can be viewed as perceiving its environment through sensors and
acting upon that environment through actuators. 

I think this is mostly right. But parts of it still irked me. What does it mean to act upon an environment? ChatGPT can read the news or execute code before answering, does that qualify? Are we back at "tool use"? Perhaps, I thought, read-only actions are insufficient. We can modify the definition to clarify that an agent's actions must be capable of modifying its environment. It must be an activate participant in the world, not just a passive one. The anti-NPC. And yet...something still seemed off. I found myself tacking on more and more qualifiers, designed to justify some amorphous intuition about what *felt* like an agent. I know it when I see it, but that's about as satisfying as "tool use".

Instead I propose a different type of definition. The core question we're usually interested in is: what distinguishes an agent from a chatbot?

**A chatbot provides information that helps you solve your problem. An agent solves your problem.**

I was tempted to make that line the whole post, but I'm an overthinker at heart so a framework it is!

## Agents in 3 1/2 Levels

(For simplicity, examples are presented in something resembling a chatbot UX. That is hardly the only or optimal form, of course, and I expect that higher levels will diverge more and more from the chatbot pattern.)

### Level 0 (not an agent) - provides a user with content that helps them complete a task

> Human: I'm thinking of traveling to Tokyo, where should I go?  
> AI: [searching...] Given your interests and my research, you should visit B-Pump Ogikubo and visit these sushi restaurants: ...

### Level 1 - perform concrete sub-tasks specified by a user in service of a larger task

> Human: I'd like to travel to Tokyo, can you book me the cheapest non-stop ticket for 1 week in May?  
> AI: [working...] I found roundtrip tickets for May 12 - May 19 for $500. Do you approve this purchase?  
> Human: yeah  
> AI: [working...] Your ticket has been booked and the details are in your inbox.

### Level 2 - perform large, loosely defined tasks end-to-end in pursuit of user-prescribed goals

> Human: I'd like to go on a trip this summer, can you figure out the details?  
> AI: [working...] Given your interests, I've put together a trip I think you'll like. Here is my proposed itinerary:  
...  
Should I book everything for you?  
> Human: yeah  
> AI: [working...] Everything is booked! You can find your plane tickets, itinerary, and all concert/event tickets and dinner reservations in your inbox. An uber will take you to the airport on May 12 at 6pm - I'll remind you as the date approaches.

### Level 3 - determines goals, identifies necessary tasks, and performs them

> AI: I've noticed a shift in you lately, there's a weariness that wasn't there before. I think it might be time for a vacation. Given your interests and budget, I put together a possible itinerary:  
...  
Want me to book this?  
> Human: good idea, work has been crazy. I've been so caught up in it I didn't even notice but yeah, it's really getting to me. Let's do it.  
> AI: Everything is booked! You can find your plane tickets, itinerary, and all concert/event tickets and dinner reservations in your inbox. An uber will take you to the airport on May 12 at 6pm - I'll remind you as the date approaches.  

(Notice this is the only example where the AI initiates. I also omit any `[working...]` markers because this AI is *always* working. Technically it may have been given some broad goal at some point - "improve my life" or "help humanity" or "advance science" - but that's almost more like a value than a goal. Specific goals and implementation details are all left to its judgment.)
