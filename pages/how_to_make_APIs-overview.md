---
layout: page
title: "How To Make APIs - An Overview"
---

After choosing a set of information or services to offer via API, some of your next steps are to plan and implement the API. You'll still need to prepare documentation, tools, and other elements that make a complete package for the API, but at the center is the actual Web service itself. In many situations, existing IT resources or the current system operators handle this step. There are several options at this stage, each with advantages and disadvantages.

First, though, ask the following questions of the target data:  

* What kind of information is it—spreadsheet, database, or other?  
* Is the data static, added to on a regular basis, or refreshed on a regular basis?
* What are the desired interactions that a developer might envision?  
* How does this API release fit within the agency's digital strategy?  

## The API Supply Chain

Just as an API without a wider package of documentation, tools, and resources is incomplete, so too does the API production effort require a holistic review of the supply chain for the underlying data and services. A comprehensive approach to the agency's data ensures a more healthy and productive API initiative. Fundamentally, this means coordinating with the data stewards and agency staff who maintain and publish the information. They and other agency stakeholders should understand how APIs impact the way that the agency’s mission is promoted and its consumers served.  

At its core, APIs are to serve a practical role in how the agency does its work and by working with all relevant staff, you can ensure that the work is better integrated, consumed, and maintained going forward. Staff should understand that their data will be consumed in new and innovative ways and be shown how to benefit from these new advances as well.    
There are as many different ways to offer APIs as there are to build websites, but the following five methods illustrate common paths. 

### 1. Convert and host a file

One simple and straightforward way to offer agency data that exists in spreadsheet form is to convert an .xls or .csv spreadsheet file into JSON. Several open-source tools [exist](https://www.google.com/search?q=csv+to+json+open+source) but there are also [free online converters](http://stackoverflow.com/questions/662859/converting-csv-xls-to-json) that can make short work of the task. When using a manual converter, it may then be necessary to copy the results into a text editor and save as a file with a .JSON file extension. The JSON file can then be statically hosted just like any other file. Though this is a simple extra step, it has the benefit of allowing developers to more easily consume the information and build applications on top of it.   

Given the ease of this method, it’s highly recommended as a good first step for individual data files that your agency publishes. However, the end result, a downloadable .JSON file, is basically an API-lite approach. It is developer friendly, but stops short of being an actual Web service that can accept queries and return results. A number of affordable online services now exist to just that end. 

### 2. Employ an API generating tool

Several websites offer the same ease of use described above but with more powerful functionality. The starting point is the same. Agency staff take a piece of agency data that exists as .csv or .xls spreadsheets, upload it, choose a few descriptions and other options, and the website hosts the data file but also provides a RESTful API, along with documentation and helpful tools for consuming the API.    

The Socrata toolset, for example, includes this means, such that spreadsheets served through its data portal product may benefit from this API access automatically. Other services go further and provide a more rich package in addition to simply standing up the API, automatically building in elements such as code samples, interactive documentation, API keys, and more. GSA's .gov domain and Data Center Consolidation APIs provide an example of this method.    

These first two approaches target data that is already in a spreadsheet file. Oftentimes, the data is more complex than that. 

### 3. Activate your database's potential

Existing databases provide live, on-demand access to information that is regularly updated. Most agency systems store their underlying data in a database. Many databases have API functionality built in that can be activated with little effort. You are still required to take the generic documentation for the database API and customize it for your service. Although technically easy, it also requires close coordination with the system owners and technicians to ensure that the API can be deployed safely—that is, that the data can be exposed and that the infrastructure can support the load.  

### 4. Build the API into the system

Any of your agency’s systems are capable of becoming API-enabled, though it may require using custom development to integrate the functionality. By consulting the system owners and working with the IT resources responsible for the system, it may be as straightforward as requesting that the system requirements be updated to include API access. The goal is to ensure that the data can be accessed by third parties programmatically. For systems which are currently under construction or undergoing an update, it makes sense to include this requirement in the planning stage.

### 5. Build an API team

Perhaps the most advanced method is to stand up a team that builds APIs directly. With technology such as [OData](http://www.odata.org/) or [GData](https://developers.google.com/gdata/), this team can build an API layer that floats on top of targeted data, providing a customized Web service for the data. This method sees the API as a new, independent system.

This path may offer several advantages, including a consistent, integrated API across all of the agency’s data. When contrasted against a patchwork effort, such a consolidated approach encourages greater developer adoption.  

Given the increasing role of APIs in agency digital efforts, such an investment can be well worth the effort. The significant success of the [Census Bureau](http://www.census.gov/developers), [Department of Labor](http://developer.dol.gov), and [Department of Health and Human Services](http://www.healthdata.gov)’ API efforts serve as models for mature and fully fleshed out API production.

