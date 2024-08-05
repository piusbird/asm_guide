---
title: Why?
date: 2024-08-03 10:02
---
# Background Info

Seven years ago, I had a miniature stroke, or some type of other neurological event. The doctors were never sure about what happened. The most important consequence of this, was that I kind of forgot how to program for a while. Not that I lost any of my knowledge. It was all still there, but much of my muscle memory and  intuitive sense of how to do things was lost.

Seven years later it's mostly back although it has been a struggle at times, there is one major exception however my knowledge of how to do low level programming, think C/Embeded Systems. Has never fully come back. Which is unfortunate because  this skill is the hottest commodity, in my area right now.

So what did I do I set out relearn low level programming from first principles, using the method I was first taught by Professor Emeritus Norman Cohen. At morrisville state college. May he rest in peace. Norm's  philosophy  on how to do low level learning, or perhaps any sort of learning whatsoever, was that the least amount of learning is done inside the classroom.
 
Therefore  skills should be taught, using hardware and software that students had ready access to. It was for this reason that we were taught computer architecture and low level programming not with Arduinos or Z80s  or specialized equipment of any kind, nor was it a pure theory course emphasizing things like Carnauvgh  maps and formal proofs. No  the old man taught us computer architecture,  using the i386  instruction set on the bare metal of our own laptops.  Although some operations  were done in a virtual dos machine.  Then after that the next semester was learning in C in unix. Emphasizing that the compiler is just a glorified assembler,  treat it as such.
 
 
In going back, and relearning my low level instincts  from scratch I sought to use this method on myself and modernize it a bit. I sought to start with user level programs on Linux,  although coded in assembly language. I figured that would be  better then trying to set up a virtual dos environment and tool chain from scratch. And also give me insight into how to not screw up in  modern C.
 
However when I tried to look up information,  about how one codes assembly language on Linux. I quickly found that the information I needed was scattered across many websites. Much of it was outdated and wrong, and what did exist required lot of  cyber sleuthing to get to the right link.
 
This project originally began as a collection of links, but I have come to realize that without some further curation and contextualization. Even I will be confused when I run across this page years from now.  So here it is a micro site on how to code assembly language on Linux in on amd64, and inadvertently learn computer architecture along the way.
  
# Why an Intel Architecture in 202X

Well I'm sure we all long for the day, on which  the standard Pentium architecture is consigned to the dustbin of history, museums and e-waste. We aren't there yet, most of the target audience for this guide has easy and ready access to an x86 running Linux. Well raspberry pi's are great the essence of the instructional method I'm using. Is to eff around and find out. For that you need quick iteration, and is little barrier to entry as possible. Secondarily the objective is to build immediately transferable skills. So it is best done on the hardware of the day, arm will have to wait.
 
# Softly Opinionated

There are many ways of learning computer architecture, and low level programming. I find, that nearly all low level programmers have firmly held convictions As to how one should go about learning this subject. Convictions  that are held with  and almost religious fervor. These debates can often make  programming in this way seem inaccessible to even season technical people. I would suggest that no one cares about the distinctions between Microsoft assembler syntax and the more modern Netwide assembler syntax, or even when it comes down to it aT&T  verses intel mnemonics. Just pick one and stick with it. And let's not start on building one's strings with descriptors having a termination character.
 
To teach  the subject, I have to  have some sort of opinion, so here goes. We will use an intel syntax assembler, because I prefer intel syntax. We will use NASM because it has better debug symbol support then the other assemblers for Linux. But I will show off one example using Microsoft assemblers syntax  because I can. We will sometimes call  library routine, and sometimes invent our own. Depending on what's being taught. But we  well be linking against the Musl C library in order to do it. 
  
You should consider these decisions as only opinions, do your own research and develop your own. The reasons for these decisions are  trifling and arbitrary. And exists purely as the result of the editorial prerogative. Programming language wars are stupid. Especially when they're engaged in by members of the same programming language community.
 
 
 

 
 

