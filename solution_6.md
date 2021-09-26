You have been approached by a Social Sciences researcher who wishes to collect some data from Twitter and Facebook to follow the comments posted by a particular group of individuals in the run-up to the 2019 Indian general election.

How would you go about the process of Requirements Analysis for this query? What are the most important questions you should ask, and why?

### Establish requirements

Firstly, I would begin by understanding the basic requirements of the project. I'd begin by asking some higher-level questions like:

* What is the research question?
* What are the goals of the research?
* What analysis/modelling techniques do you plan to use if any?

Asking these questions is likely to give a much better idea of the lower-level requirements of the data capture. In the case of a research software engineer, it could well be the case that you would be more familiar with the methodologies/techniques the researcher is interested in using, and so might be able to guide the requirements process by getting a better high level overview from the start.

Then this would move to the lower-level details of the project, for example I would ask:

* Who are the individuals? Are they already strictly defined or do we need to define a study population? - It would be significantly more complex to develop a sampling procedure that selects among a subset of users, than to run a query over a set of pre-defined users.
* What observations do you need to take from the comments? One might assume this would be the raw text, but could well just be metadata like the number or timestamps of comments, geolocation, or a combination thereof. This will obviously affect the nature of the capture and also the complexity of the task.
* How much data/how many comments do you require? This will significantly affect the resources needed to store and analyse the captured data, particularly if the research will include any modelling/machine learning methods that may require more/less training data, and may require HPC resources to implement if using a very large dataset.
* Why Twitter and Facebook? Twitter has a fantastic public API, but Facebook is notorious for thwarting efforts of third parties to collect user data. Might other social media be a reasonable substitute i.e. Reddit (which also features a public-access API). This would likely make the data capture significantly easier, and would be worth establishing to avoid a lot of potentially unnecessary effort.
* How do you define the run up to the election? Is this a specified timeframe or might it relate to any time prior in which the election is mentioned? This obviously affects the specification of the query at the time I begin collecting data.

### Analyse Requirements 

After establishing the initial set of requirements, it's important to go away and investigate their feasibility. This would involve establishing things like:

* Estimating the time the task will take - do we have the availability/resources to undertake the task?
* Getting a ballpark of the size of the data capture - might the specifications result in a much larger dataset than envisioned? might there be less data than anticipated, which would make the analysis/approach less feasible?
* Investigating the means of capturing data from the platforms specified - as mentioned above, Facebook's terms of service are such that it isn't possible to capture user data from the site without their prior agreement. As the data isn't necessarily public, it also comes with potential ethics/gdpr considerations - is this feasible?

After establishing the practicality of the requirements given, I might need to return to the researcher to adapt the requirements to challenges that might emerge when I establish a better understanding of the practicalities of the task.

### Implementing Requirements

Once a set of feasible requirements is established, it then remains to go ahead with the capture. If the query is particularly large or includes a complex collection process, it may well be beneficial to run a short test query before undertaking the full data capture. The output from the test query can be sent to the researcher as a sanity check to ensure the output is as expected before going ahead and running the full query.