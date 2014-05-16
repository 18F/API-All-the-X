---
layout: page
title: "How to Make APIs - Advanced"
---

*Under Construction*  

## How to Make A Free API with Apigee...


### Background
...


### Process

1. Host a CSV that includes the metadata fields in the header row. 
2. Add a JSON layer
3. Add parameters
4. Document the end result


## Producing an API with Solr

When you say that you are using the engine's DSL, be sure to find and link to the best ElasticSearch DSL documentation, too.  (Note, we should suggest a link. [One candidate](http://lucene.apache.org/core/2_9_4/queryparsersyntax.html).)

## Producing an API with ElasticSearch

When you say that you are using the engine's DSL, be sure to find and link to the best ElasticSearch DSL documentation, too.    (Note, we should suggest a link. [Two](http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/query-dsl.html) [candidates](http://www.elasticsearch.org/guide/en/elasticsearch/guide/current/query-dsl-intro.html).)


## Producing APIs through Socrata's API Foundry

...


## Producing APIs through Socrata's Data Catalog

One way agencies can offer APIs for their data is to use the built–in functionality of Socrata's data catalog. The information that is hosted as interactive datasets have an API layer which agencies can make available through documentation in the developer's section of the agency's website.

The guide below will help you do this.  

### Process

Upload a dataset as an interactive dataset in a Socrata data catalog.  
 
Once the dataset is live in your interactive datasets catalog, click on 'Export' (in the top right), then 'API'. You’ll need the resulting information in a moment.
 
Create an html page within your agency's developer hub that will serve as an API homepage for this documentation (e.g., www.agency.gov/developer/name-of-api). 
 
Customize the template below with the appropriate API information from your interactive dataset (see #2) and add the information to the API homepage that you've created.  
a. For the API URL, copy the 'API Access Endpoint', remove the 'json' suffix, and insert '[format]'.  
b. The 'Response Format', 'Type', and 'Authentication' fields do not need customizing.  
c. For the 'Example Requests', begin with the dataset's 'API Access Endpoint', and customize it with parameters and values that demonstrate potential uses of this dataset's API.  
d. For the Parameter's Chart, describe each of the parameters listed in the 'Column IDs' and provide examples that are used in the dataset.  It may be appropriate to combine some Column IDs, for instance, along the lines of the example below.  
 
Include a link to the '[Further Developer Documentation](http://dev.socrata.com/)' that Socrata offers. 
 
Link to any [additional developer resources](http://www.howto.gov/mobile/apis-in-government/api-release-kit) you create to a 'Related Resources' section.
 
### Template 

**Name of Dataset**

This section is a description of the dataset and some background for the API. Use plain language to describe what the underlying data is and what developers can do with it. Avoid insider language and acronyms—remember to ask whether someone who is new to your agency's work would easily understand it.
 
**API URL**

http://URLofYourSocrataCatalog.gov/resource/[dataset-id].[format]
 
**Response Format**

json, xml
 
**Type**

HTTP GET
 
**Authentication**

None required
 
**Example Request**

[See the example for a model to use]  
 
**Parameters and Values**

*Create a table with columns for Parameter, Type, Description, Sample, and Values. See the [example API](http://gsa.gov/portal/content/162379) for a model to use.*
 
**Further Developer Documentation**

[Socrata’s SODA Documentation](http://dev.socrata.com/)
 
**Related Resources**

Include any [additional resources](http://18f.github.io/API-All-the-X/pages/api_release_kit) your team can offer developers.  
 
### Completed Example 

To see this model in action, check out GSA’s [Per Diem API](http://gsa.gov/portal/content/162379). 

## Producing APIs through CKAN

...


## Through:  
[php and mysql](http://www.brenelz.com/blog/how-to-create-a-simple-api-with-php-and-mysql/)
[WSO2 data services server](http://wso2.com/products/data-services-server/)
[Apify.co](http://apify.co/) - [hosted](http://apify.heroku.com/resources)


*Also* - Through contracting a gov't agency that provides IT as a shared service.  18F, federal consulting group, who else?
