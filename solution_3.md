Whenever I'm faced with a script that I'd like to run faster / more efficiently, I ask myself 3 basic sets of questions:

1) What operations am I using, and are they too complex? Might there be more computationally efficient alternatives? Can I replace multiple operations with a more simple alternative? 

2) How many operations is my script running? Are there wile/for loops that are running for multiple iterations? Can I reduce the number of operations within these loops? Can I reduce the number of iterations these loops run for? Can I replace loops with a more efficient operation, like map/reduce or a vectorised solution?

3) Am I using all of the computational resources available to me? Can any of my script be run in parallel i.e. on multiple processor cores or a GPU? 

In the case of the short script you've provided, none of the operations are particularly complex - they are all simple mathematical operations, simple manipulations of lists, or if statements. Nothing too taxing that will be slowing things down to any notable degree. So, we can tick off the first group of questions.

The principle issue here comes with the second group of questions - the two nested while loops. You should find that you can make your code more efficient by focusing on the second group of questions. A good way to approach this, is to manually check the operations your code is performing as it runs. This can be done with a few well placed print statements, or using the debugging software that is built into most popular IDEs.

As you debug your code, you'll likely find that there are operations you are running many times over that are either duplicated or unnecessary. A couple of hints that become obvious when you look at the operations your code is running:

* is the `s[j]=0` operation inside your first loop necessary?
* might there be a way to set all the index locations in your second loop to zero all at once, rather than running through a nested while loop for each index location

The final set of questions relating to parallel processing are more challenging in this case. Your function is defined in a manner that it needs to be run sequentially, and it can't easily be split into smaller chunks that can be processed separately. If you were really keen on getting things running very quickly, you might want to refactor your code into smaller sub-processes that can be run independently of one another i.e. you could make different processes responsible for removing different groupings of multiples, and then aggregate the results together at the end. However, in this case that is likely to be an over complication, particularly given you would need to familiarise yourself with python multiprocessing.

Good luck!