from algs4.stdlib.stdrandom import uniform,shuffle
from algs4.stdlib.stdstats import mean,stddev

class RandomQueue:
    def __init__(self):
        None
    def isEmpty(self):
        None
    def size(self):
        None
    def __len__(self):
        None
    def enqueue(self,item):
        None
    def sample(self):
        None
    def dequeue(self):
        None
    def __iter__(self):
        """
        Returns an iterator that iterates over the items in this RandomQueue in random order.

        :returns: an iterator that iterates over the items in this RandomQueue in random order.
        """
        None
        # create the right mine
        for x in mine:
            yield x

# This  "main method" tests your implementation. Do not change it.
if __name__ == '__main__':
    Q = RandomQueue()
    # build a randomQueue with 1,2,..,6
    for i in range(1,7):
        Q.enqueue(i)
        
    # print 30 die rolls
    print( ' '.join([str(Q.sample()) for i in range(30) ] ) )

    # Let's be more serious: do they really behave like die rolls?
    rolls = [ Q.sample() for i in range(1000) ]
    print("Mean (should be around 3.5): {:5.4f}".format(mean(rolls)))
    print("Standard deviation (should be around 1.7): {:5.4f}".format(stddev(rolls)))

    # removing 3 random values
    print( "Removing {}".format(' '.join( [str(Q.dequeue()) for i in range(3) ] ) ) )
    
    #Add 7,8,9
    for i in range(7,10):
        Q.enqueue(i); 
    # Empty the queue in random order
    while not Q.isEmpty():
        print(Q.dequeue(),end=' ');
    print()

    # Let s look at the iterator. First, we make a queue of colours:
    C= RandomQueue()
    C.enqueue("red"); C.enqueue("blue"); C.enqueue("green"); C.enqueue("yellow"); 

    I = iter(C)
    J = iter(C)

    print("Two colours from first shuffle: {} {}".format(next(I),next(I)))
    
    print("Entire second shuffle: {}".format(' '.join([i for i in J])));

    print("Remaining two colours from first shuffle: {} {}".format(next(I),next(I)))
    

