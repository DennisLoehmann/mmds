# Question 1

Suppose we hash the elements of a set S having 20 members, to a bit array of length 99. The array is initially all-0's, and we set a bit to 1 whenever a member of S hashes to it. The hash function is random and uniform in its distribution. What is the expected fraction of 0's in the array after hashing? What is the expected fraction of 1's? You may assume that 99 is large enough that asymptotic limits are reached.

## Solution

A Bloom filter is an array of bits, together with a number of hash functions. Initially all bits are zero. When input y (part of S) arrives, we set to 1 the bit h(y), for each hash function h.

* x = 99 bits for our filter.
* y = 20 Stream elements 
* p0 = e^(-x/x) = e^(-20/99) = 0.0070834
* p1 = 1 - e^(-y/x) = 0.9929
 


# Question 2

A certain Web mail service (like gmail, e.g.) has 10^8 users, and wishes to create a sample of data about these users, occupying 10^10 bytes. 

Activity at the service can be viewed as a stream of elements, each of which is an email. The element contains the ID of the sender, which must be one of the 10^8 users of the service, and other information, e.g., the recipient(s), and contents of the message. 

The plan is to pick a subset of the users and collect in the 10^10 bytes records of length 100 bytes about every email sent by the users in the selected set (and nothing about other users).

The method of *Section 4.2.4* will be used. 

User ID's will be hashed to a bucket number, from 0 to 999,999. At all times, there will be a threshold t such that the 100-byte records for all the users whose ID's hash to t or less will be retained, and other users' records will not be retained. 

You may assume that each user generates emails at exactly the same rate as other users. 

As a function of n, the number of emails in the stream so far, what should the threshold t be in order that the selected records will not exceed the 10^10 bytes available to store records? From the list below, identify the true statement about a value of n and its value of t.


## Solution

Here are my ideas:

	n = number of emails sent so far
	f = (t + 1) / 1 000 000 (fraction of selected users)
	u = 10^8 * f (number of users)
	e = n * f (number of emails in samplesystem)
	bytes = e * 100

Examples given:

	n = 10^13; t = 9
	f = (10 / 1 000 000) = 10^-5
	u = 10^8*10^-5 = 10^3
	e = 10^13 * 10^-5 = 10^8
	bytes = 10^8*100 = 10^10 => OK (10^10 bytes available)
	

	n = 10^9; t = 999
	f = (1000 / 1 000 000) = 10^-3
	u = 10^8 * 10^-3 = 10^5
	e = 10^9 * 10^5 = 10^14
	bytes = 10^15*100 = 10^16 => NOT OK (only 10^10 bytes available)
	

	n = 10^14; t=0
	f =(1/1 000 000) = 10^-6
	u = 10^8 * 10^-6 = 10^2
	e = 10^14 * 10^-6 = 10^8
	byes = 10^8*100 = 10^10 => OK (10^10 bytes available)
	

