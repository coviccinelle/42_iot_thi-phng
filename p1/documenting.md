setup:
Fedora (host) → QEMU/KVM → Ubuntu 22.04 VM → Vagrant + VirtualBox → các VM của project
=> this is nested virtualization (VM in VM)


Script to verify:
```bash
vagrant up
vagrant ssh thi-phngS #ssh to verify
kubectl get nodes -o wide #you have to see 2 nodes: thi-phngS (control-plane) and thi-phngSW => both are ready
```

out put:
```bash
vit@iot:~/42_inception_of_things/p1$ vagrant ssh thi-phngS
[fog][WARNING] Unrecognized arguments: libvirt_ip_command
Last login: Tue Jun  2 14:16:26 2026 from 192.168.121.1
vagrant@thi-phngS:~$ kubectl get nodes -o wide
NAME         STATUS   ROLES           AGE   VERSION        INTERNAL-IP      EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME
thi-phngs    Ready    control-plane   10m   v1.35.5+k3s1   192.168.56.110   <none>        Ubuntu 22.04.3 LTS   5.15.0-91-generic   containerd://2.2.3-k3s1
thi-phngsw   Ready    <none>          10m   v1.35.5+k3s1   192.168.56.111   <none>        Ubuntu 22.04.3 LTS   5.15.0-91-generic   containerd://2.2.3-k3s1

```

==================================

I don't know who am I, what I'm doing
I don't feel valued or heard enough. I feel invisible, it's horrible
It's like I'm not even living, even though my life is ok, actually normal, or not, maybe
Am I hallucinating? What am I waiting?
Is my expactation too high?

I feel like a looser in my field, souble doubt myseft for not getting a job.
Like I am that bad? I'm doing okayish in a legit tech school, come on, I gone through the harsh period (Covid, no human conection, harsh projects before they got removed, thank you I spent 3 full months sleeping dreaming about that)
But again, I don't think my brain fucntion normaly. I knew how to code before AI existed. I used to wish there were a syntax translator between languages, that came a bit different than I expected.
Anyways, I used to dived deep in to all that, knowing every detail of those projects. but now I don't even remember the tech details, or even those challenges. It makes me feel like afraud, omg that's horrible.

I did a technical interview, crossed a problem that I couldn't solve in time, an easy thing that was always on my top things to reinforce.

Such a shame because it's not that hard, especially after the list of projects that I talked before.
I felt bad and a bit disappointed about myseft.
But what hunts me the most was what the co-founder had told me: "such a shame because I got a good impression of you"
I beated 3 others tech guy in the 2 previous tests: cogitive tests and software developement design tests.
They finished the test before time and as the only girl I felt small and not that smart.
But I got to a next interview, and not them ???
Anyways, one of the advice the interviewer told me is that I should do more software by myseft, without any help, or AI.
ouch that hurts haha, and also living rent-free in my head for a solid 2 weeks.
As anoverthinker, off course I reconsider my whole existance based on that line.
Like what's the point of learning when I constantly forget what I've hardly learnt???
That's so stupid.
Like last week, I burned 2 hands from cutting green chillies.
The next 12 hours weren't easy at all, there were some tears, a lot of suffers, washing, putting fats, milk, putting my hands in cold water, creams, doliprand to be able to sleep.
The worst part is, I used to do EXACTLY the same thing before but I didn't remember it!!!!
I though they were bell pepers, again, when I bought it online, again.
Like how stupid is that???
at least I got to learn how the spicy thingy works on your skin, and that it resolve in fat, and then you can (try to) remove it with soap and water (it only reduced 20% I think).
Anyways, knowledge makes me feel stronger, or in control in a sense. or just not panic that much.

Like how can I make memory permanant for my tiny overwelming brain to get that WTH!!!

I need to document more, not for my grand children, but for myselft, in scrises phrase like this, to calm the freak down. I lived those moments, knew those things, enjoyed those moments with those friends, lived that live.
I'll call it POL: proof of living.
So you better calm the freak down and stop asking the purpose of your life, the relationships through your life, and that if your life is worth living.
Yes yes yes, well at least in those moments, they were true!!!

here is the proofs!!!