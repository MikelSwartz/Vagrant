# Vagrant.git4me
Simple Vagrant host for playing around with git and for going through PluralSight's: 'Advanced Git Tips and Tricks' and 'Introduction to Git'.  
PluralSight's: 'Advanced Git Tips and Tricks' requires git version 1.8+. The easiest way to do this with CentOS is with CentOS7. CentOS 6.8 maxes out at 1.7.xx. 
However, I was able to mannually install git 2.8.4 on CentOS6.8. Everyone seems more comfortable with CentOS 6. 
It appears that one cannot name a repository '.git' in github as that is a reserved prefix. 
#Instructions
Pluralsight students should be able to spin up this box in Vagrant and jump right to the `Basic Commands` section of the 'Introduction to Git' CBT.  
The .gitignore file is setup to be able to follow along with all the examples.  
I would use the `/vagrant/ directory as it is shared between host and guest.    
All exercises appear to work with the 2.8.4 version of git.  

