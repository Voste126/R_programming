<img src="materials/images/introduction-to-cloud-computing-cover.png"/>

# Introduction to Cloud Computing

`🕒 This module should take about 30 minutes to complete.`

`✍️ This notebook is written using Python.`

<div class="alert alert-block alert-info">
<h3>⌨️ Keyboard shortcut</h3>

These common shortcut could save your time going through this notebook:
- Run the current cell: **`Enter + Shift`**.
- Add a cell above the current cell: Press **`A`**.
- Add a cell below the current cell: Press **`B`**.
- Change a code cell to markdown cell: Select the cell, and then press **`M`**.
- Delete a cell: Press **`D`** twice.

Need more help with keyboard shortcut? Press **`H`** to look it up.
</div>



---


# Why do we need to think about infrastructure scalability?

Instagram was founded in October, 2010. On the first day, they had 25,000 users; in one month, Instagram reached 1 million users. Within a year, they reached 14 million. In February 2013, the company reached 100 million users [1].
   
Imagine that you founded Instagram. How would you scale this platform in a way that all users don’t have to wait for a long time for each app interaction?  

<img src="materials/images/instagram-example.png"/>

Applications are generally grouped into two broad classes: 1) Latency-sensitive or user facing jobs and 2) Throughput oriented or batch processing jobs: 

A good example in a biomedical setting is My Personal Health Dashboard (MyPHD). MyPHD is an open-source software framework to support data acquisition, storage, and real-time analysis in biomedical research. The mobile app has been used daily by over 10,000 research participants to upload smartwatch data in the U.S., Finland, and Japan. In MyPHD’s case, a job might require a latency of 100 seconds for uploading daily heart-rate data.

An example for Throughput oriented or batch processing jobs are bioinformaticians running 10,000 genomic files each day. The latency of each job has less effect on the outcome, as long as the 10,000 jobs can be completed in one day.


<img src="materials/images/latency-sensitive-vs-throughput-oriented.png"/>

In healthcare, we now have the capability to collect petabytes of health data for just one individual. At Stanford University, we collected over 2 PB of data around Dr. Michael Snyder, Chair and Professor of Genetics at Stanford University. However, only storing a petabyte of data on any major cloud provider can cost up to $20,000 per month. Clearly, we need better computational and storage systems.

### Capacity planning: Ensure resources are available to your growing workload.

Capacity planning is the process of determining the production capacity, and making sure your business has the available resources to meet consumer demand.

In 2008, Amazon found that every 100ms of latency cost them 1% in sales. In 2006, Google found an extra 0.5 seconds in search page generation time dropped traffic by 20% [5]. According to Google Analytics data, 53% of visits are abandoned if a mobile site takes longer than 3 seconds to load. [6]

Response time is critical for healthcare applications, such as detecting heart failure, seizure, and epilepsy in children. The question to ask is: How can we make sure we have enough servers to process a large number of requests at any moment?  


### Pay-as-you-go: Pay as much as you use the cloud resources.

For most services we use in the market, we are responsible for paying for the services. It is no exception if we use cloud computing services. Pay-as-you-go model describes that customers pay for the cloud services based on their usage, rather than a flat rate.

Let’s explain further using this example. In the old days, everyone had a well in their houses. The following picture shows that even though water consumption varies over time, the cost of maintaining the well stays the same. This means the same amount of money is spent even when the usage of the well is low. That’s why governments and large corporations created utility companies for water and electricity. Now, we can use these services as much as we want, and only get charged for how much we use the services. 

<img src="materials/images/cost-vs-usage.png"/>

Keep in mind, this model is what we use in cloud computing. The service being charged is the computer utilities. We will explain more next.

### Utility computing: Manage your cloud usage.

Utility computing allows customers that use cloud services to manage their computer utilities usages. This is important because it provides customers the flexibility to choose which services they will use based on their changing needs. In addition, it saves customers lots of money because the pay-as-you-go model is now possible with utility computing. 

Let’s try to understand the concept of utility computing a bit further. In 1969, Leonard Kleinrock predicted that we will see the spread of computer utilities (eg. servers) like electric and telephone utilities. Remember the well example? Instead of owning and maintaining the IT infrastructure like what we used to do with wells, we can now access the shared physical hardware, and pay the cost based on our usage. 

In the setting of cloud computing, utility computing is what makes pay-as-you-go model possible for the customers. Essentially, utility computing is a service provisioning model set by cloud service providers. It allows customers to use the service in a more cost-efficient way.

P.S. Leonard Kleinrock is one of the key scientists behind creating The Advanced Research Projects Agency Network (ARPANET) project – the first public packet-switched computer network – which led to the creation of the Internet.

### What is elasticity?

Elasticity is defined as the ability to scale computing resources dynamically based on the size of workload. A cloud customer can add or remove computing, storage, and networking assets based on their needs. For example, Amazon Elastic Compute Cloud (Amazon EC2) provides its customers resizable compute capacity to support their dynamic workloads.

<img src="materials/images/elasticity.png"/>



---

# What is Cloud Computing?

Cloud computing is services, such as servers, storage, databases, and networks on the Internet (also called cloud, or a network of servers) that the customers can use based on their unique needs at the time, and only pay for their usage. [8]

According to the National Institute of Standards and Technology (NIST) [1]: 

“Cloud computing is a model for enabling ubiquitous, convenient, on-demand network access to a shared pool of configurable computing resources (e.g., networks, servers, storage, applications, and services) that can be rapidly provisioned and released with minimal management effort or service provider interaction.” 

### Virtualization: The piece that makes cloud computing possible

Virtualization is the making of a virtual computer that performs the same function as a physical computer. While having the same functionalities of a physical computer, it is more flexible and powerful than a physical computer.

Imagine having several servers, operating systems, and applications running on one physical computer. This is what cloud computing allows us to do [12]. For example, if you are running a pharmaceutical startup, your employees can use your company’s physical computer hardware more efficiently with cloud computing. They can run more data and algorithms with just one computer, and generate more results for your company in a single day. Essentially, they can do more “jobs”. Cloud computing is a great return on investment for a business, and provides your company with a competitive edge.

The physical computer we interact with is used like a building. Without cloud computing, there is only one room inside with one living room, kitchen, bathroom, and balcony (eg. one server, one operating system). With cloud computing, there are several rooms in different shapes and sizes. What’s great is that the guests that will move into these rooms decide the shape and sizes of these rooms. In the context of cloud computing, we decide what we will include in our room (i.e. our virtual machine) depending on the job we will perform: do we need storage? Do we need computers?

The additional benefit of cloud computing using the metaphor of the building is that if the kitchen in one room is broken, it won’t affect the kitchen in other rooms. Therefore, other jobs won’t be affected if one job is paused.

### What are the service models for cloud computing?

Traditionally, teams were in charge of the full technology stack from buying servers and storage, to configuring computer networks and installing operating systems (OS) – this was called on-premises. Data center is an organization’s physical facility that hosts data and applications with the organization’s computing resources, storage, and network infrastructures. [11] This model is like having your own dedicated kitchen, and buying all the ingredients to cook a pizza. 


<img src="materials/images/data-center.png"/>

With the emergence of Cloud Computing, infrastructure moves from physical servers to virtual networks. This allows us to use multiple servers from different data centers at once. In other words, when we are hosting data or applications in the cloud, we are using resources from different data centers managed by the cloud provider [11].

Now we know that the services cloud providers offer are essentially on-demand data center resources. Based on our needs, there are 3 types of service models

#### 1) Infrastructure-as-a-Service (IaaS)

This model is like you bring pizza ingredients to a shared oven at a community kitchen, where they have set up the infrastructure for you to cook. You have complete control over the cooking process.

In the IaaS model, cloud providers are responsible for physical infrastructure, such as buying servers, storage, and handling virtualization. Amazon Elastic Compute Cloud (Amazon EC2) is an example of IaaS. You have complete control over the configuration of your cloud resources.

Note the networking layer is a shared responsibility between the provider and customer.   


#### 2) Platform-as-a-Service (PaaS)

If you order a pizza delivery from a restaurant, the only thing that you need to think about is how you want to create the pizza, such as what toppings you want to have, and a thicker Sicilian pizza or a thin New York pizza. You leave the rest of the tasks to the restaurant, such as setting up the kitchen, and sourcing ingredients. 
In the context of cloud computing, PaaS allows customers to focus on developing applications and algorithms, by providing infrastructure, and support on building, testing, deploying, managing, and updating. [9] For example, Amazon SageMaker allows bioinformaticians to build, train, and deploy machine learning models. Amazon Athena and Google BigQuery are another two examples of this service model.

Cloud providers are handling the technology stack up to the middleware layer – Middleware is software that performs like a bridge between different applications. For example, messaging systems like Amazon Simple Notification Service (NAS) or Google PubSub are considered middleware. 

#### 3) Software as a Service (SaaS)

As the name suggests, SaaS companies rent the software services to its customers via the Internet [9]. The experience of using SaaS is like dining in at a nice restaurant to celebrate you graduating college. As a customer, you pay for an out of package solution for the experience of having food served to you in a thoughtfully decorated environment. You’re only responsible for showing up, and deciding who you are going to invite to share the dinner. The restaurant will take care of the rest.

For the SaaS model, cloud providers are in charge of most of the technology stack – the only shared layer is around data. Examples of SaaS are Google Doc, Zoom, and Amazon Simple Storage Service (Amazon S3). Even though cloud providers host customer's datasets, customers are responsible for specifying who can have access to the datasets.        


<img src="materials/images/service-models.png"/>

---

### What are the deployment models? 

Deployment models determine the specific types of cloud environment based on ownership and access, as well as the cloud's scope and purpose [2]. 

National Institute of Standards and Technology (NIST) defines four cloud deployment models: 
1. Public
2. Private
3. Community
4. Hybrid

<img src="materials/images/deployment-models.png"/>

Let’s assume we want to deliver some boxes from point A to Z and we have two options: 1) regular truck or 2) armor truck. Which one would you pick? 

The cost of using an armored car is more than a regular car, but the important question to ask is: what are we trying to deliver? If we plan to deliver gold, then it makes sense to go with an armor truck. However, if we are delivering something less valuable like copper, then a typical truck is likely to be good enough. 

**1. Private cloud:**

We can consider a private cloud like an armor truck that is dedicated to our needs, and each data center where the resource belongs to is exclusive to one organization. If one machine is down, then we won’t need to worry about the rest of the machine.

**2. Public cloud:**

In comparison, public cloud is a shared infrastructure like UPS (United Parcel Service), where our boxes are on a shared facility. 

**3. Community cloud:**   
Community cloud is an exclusive use by a specific community of consumers from organizations that have shared concerns (e.g. mission, security requirements, policy, and compliance considerations). For example, AWS GovCloud (US) is an example of a community cloud. It helps its customers support US government compliance requirements. [7]


**4. Hybrid cloud:**
As the name suggests, it is a composition of two or more distinct cloud infrastructures (private, community, or public). For example, we could deliver copper with a public truck to a middle point, and then deliver gold from the middle point to the Z point using an armor truck.    

---

#### References:

[1] https://csrc.nist.gov/publications/detail/sp/800-145/final, Last accessed August 29,2022

[2] https://nvlpubs.nist.gov/nistpubs/legacy/sp/nistspecialpublication800-145.pdf, Last accessed August 29, 2022

[3] Facebook to Acquire Instagram. (2012, April 9). Facebook. Last accessed September 8, 2022 from https://about.fb.com/news/2012/04/facebook-to-acquire-instagram/

[4] Blystone, D.  (2022, July 11). What Is Instagram and Why Was It Successful? Investopedia. Last accessed September 8, 2022 from https://www.investopedia.com/articles/investing/102615/story-instagram-rise-1-photo0sharing-app.asp.

[5] Einav, Y. (2019, January 20). Amazon Found Every 100ms of Latency Cost them 1% in Sales. Gigaspaces. Last accessed September 8, 2022 from
https://www.gigaspaces.com/blog/amazon-found-every-100ms-of-latency-cost-them-1-in-sales

[6] Google. (2016). Consumer Insights. Think with Google. Last accessed September 8, 2022 from https://www.thinkwithgoogle.com/consumer-insights/consumer-trends/mobile-site-load-time-statistics/

[7] Amazon Web Services. AWS GovCloud (US). Last accessed September 8, 2022 from  https://aws.amazon.com/govcloud-us/getting-started/

[8] Microsoft. What is cloud computing? Last accessed September 12, 2022 from https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-cloud-computing/

[9] Microsoft. What is PaaS? Last accessed September 12, 2022 from https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-paas/

[10] Microsoft. What is SaaS? Last accessed September 12, 2022 from 
https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-saas/

[11] Cisco. What is data center? Last accessed Spetember 14, 2022 from https://www.cisco.com/c/en/us/solutions/data-center-virtualization/what-is-a-data-center.html

[12] IBM. 5 Benefits of Virtualization. Last accessed Spetember 15, 2022 from
https://www.ibm.com/cloud/blog/5-benefits-of-virtualization


---

# Working With Amazon Athena

In this section, we will use Amazon Athena which is considered as a Platform-as-a-Service. You bring your queries and data. Athena is a serverless, interactive query service that reads data directly from Amazon S3 object storage. We do not need to manage any servers.

## Initial setup
We'll use the PyAthena library to get access to a database stored in AWS S3. You can read more about PyAthena here:

• https://pypi.org/project/pyathena/

• https://aws.amazon.com/athena/?whats-new-cards.sort-by=item.additionalFields.postDateTime&whats-new-cards.sort-order=desc


```python
import sys
import pyathena
import pandas as pd

from IPython.core.display import display, HTML

conn = pyathena.connect(s3_staging_dir="s3://athena-output-351869726285/", region_name='us-east-1', encryption_option='SSE_S3')
```

## Query the 1000 Genomes Project dataset

It's usually helpful to picture the data before performing any analysis, so we are going to import the database as the first step, and then view a few random rows. We will provide more information about this genomics dataset in Introduction to Genomics Module. 


```python
# pd.set_option('display.max_colwidth', None) # This code expands the table horizontally so that all table cells are visible.
pd.read_sql('SELECT * FROM default.g1000vcf_csv_int LIMIT 10', conn).head(10)
```

## Query wearable project dataset
You will learn more about this wearable dataset from a study published on Nature Biomedical Engineering in 2020 in Introduction to Wearables. 

Let's just try Amazon Athena on a sample participant dataset. You will see  tables similar to this:

<img src="materials/images/schema.png"/>


```python
import pyathena
import pandas as pd

conn = pyathena.connect(s3_staging_dir="s3://athena-output-351869726285/", region_name='us-east-1', encryption_option='SSE_S3')

pd.read_sql("SELECT * FROM sid_00000.hr_minute_a6bui4n  WHERE year='2022' and device='fitbit' LIMIT 10", conn).head(10)

```

A schema defines what the name of the table is, and what the name and type of each column is. The chart above looks pretty standard: 
1. Each row is a recorded heartrate per minute associated with the data and time it was recorded. 
2. The sid and pid columns are id numbers that can be used to track rows across different data tables. 
    - sid is study ID
    - pid is study participant ID. For example, pid a6bui4n could correspond to one participant, letting us track this participant across different rows and data tables. 


Queries are written in a language called SQL (pronounced sequel), and we can break the above SQL query into a few parts:

<img src="materials/images/simple-query.png"/>

1. SELECT: 
    Like the name suggests, SELECT tells SQL which data tables and columns have the data we want to find. 
    
2. "sid_00000.hr_minute_a6bui4n": In this case, we are telling SQL we want heartrate per minute data of participant a6bui4n in the study with ID 00000

3. WHERE: 
   - It lets the query specify conditions that the data must meet. This is the meat of the query that takes over after we specify where to look (SELECT). We now get to say what we want. 
   - In this case, we're looking for data collected from Fitbit devices in year 2022. Since this is de-identified data, we shifted the date randomly for each participant.
   
4. head(10):
   We want to display 10 items from the selected table. 

---

## Contributions & acknowledgement

- **Module Content:** Amir Bahmani
- **Engineering:** Amit Dixit
- **UX/UI Design & Illustration:** Kexin Cha
- **Video Production:** Francesca Goncalves
- **Project Management:** Amir Bahmani, Kexin Cha

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
