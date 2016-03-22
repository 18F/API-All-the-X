---
layout: page
title: "Introduction to APIs in Government"
---

<table style="width: 80%;" border="0" cellpadding="0" cellspacing="0">
<ul>
        <tr>
        <td style="width: 33%;"><li><a href="https://pages.18f.gov/API-All-the-X/pages/introduction_to_APIs_in_government#what-are-apis">What Are APIs?</a></li></td>
        <td style="width: 47%;"><li><a href="https://pages.18f.gov/API-All-the-X/pages/introduction_to_APIs_in_government#how-to-start-an-api-program">How to Start an API Program</a></li></td>
    </tr>
    <tr>
        <td style="width: 33%;"><li><a href="https://pages.18f.gov/API-All-the-X/pages/introduction_to_APIs_in_government#benefits-of-apis">Benefits of APIs</a></li></td>
        <td style="width: 47%;"><li><a href="http://18f.github.io/API-All-the-X/pages/introduction_to_APIs_in_government#resources-and-tools-for-building-apis">Resources and Tools</a></li></td>
    </tr>
    <tr>
        <td style="width: 33%;"><li><a href="https://pages.18f.gov/API-All-the-X/pages/introduction_to_APIs_in_government#api-basics">API Basics</a></li></td>
        <td style="width: 47%;"><li><a href="https://pages.18f.gov/API-All-the-X/pages/introduction_to_APIs_in_government#common-questions-about-apis">Common Questions About APIs</a></li></td>
    </tr>
</ul>
</table>

## What Are APIs?

An Application Programming Interface, or API, is a set of software instructions and standards that allows machine to machine communication—like when a website uses a widget to share a link on Twitter or Facebook.

<iframe width="560" height="315" src="//www.youtube.com/embed/BVeiRCEwJx8" frameborder="0" allowfullscreen></iframe>


*[[Extended Version](http://www.youtube.com/watch?v=nyqHClC_UXo)]* 


When we talk about APIs we are referring to Web services or Web APIs. This aligns with the current trends to use Web APIs to support sharing content and data between communities and applications. The content that is created in one place can be dynamically posted and updated in multiple locations on the Web, mobile, TV, etc.

APIs can take many forms—the most functional enable a third party to query a data set at a granular level. The publishing of these types of APIs allows developers in agencies and from outside government to build apps, widgets, websites, and other tools based on government information and services—letting your audience get what they need from many places, not just your .gov website. 

APIs are not experimental. More than half of all the traffic for major companies like Twitter and eBay come through APIs. When the [Census Bureau introduced their APIs](http://blogs.census.gov/2012/07/25/pardon-our-dust-census-gov-transformation/), they saw a rise in access to their data.

Just a few of the many examples in government:

* The Federal Aviation Administration provides travel websites and mobile apps with live airport status and delay information through its [Airport Service API](http://services.faa.gov/docs/services/airport/).
* The [Pillbox API](http://pillbox.nlm.nih.gov/API-documentation.html) from the National Library of Medicine powers third party mashups that serve consumers who need to quickly identify an unknown pill.  
* The [Sunlight Foundation’s ‘Scout’ project](https://scout.sunlightfoundation.com/) consumes the [Federal Register API](https://www.federalregister.gov/blog/learn/developers) to provide alerts and notifications for formal government action.  

APIs help extend agency information to other users. For example, the National Weather Service [publishes an API](http://graphical.weather.gov/xml/) that makes weather data available to developers within and outside of the organization. The API offers real-time access to data so that an app can automatically access the latest information instead of requiring a developer to return to the agency’s website and manually copy each update. This supports an enormous and innovative range of products that present up-to-date weather information to the public.

### APIs and Data

APIs can support [Open Data initiatives](https://project-open-data.cio.gov). Well-designed APIs can make it easier for developers to use government data. APIs are an increasingly important means of publishing content. However, with any dataset which you may make available via API, it's important to first allow access to the entire set via bulk download. APIs should be seen as a complement to bulk access.

## Benefits of APIs 

Providing information and services through Web APIs supports interoperability and openness. Well-designed APIs make data freely available for use within agencies, between agencies, in the private sector, or by citizens.  

APIs:

* **Increase the reach of your services** by allowing other agencies, partners, and the private sector to integrate—and amplify—your agency’s data and content.  
* **Save time** through automation. You can update data or content once, and your API can refresh in multiple locations automatically on a website, mobile platforms, and on social media venues.
* **Save costs** by allowing third-party innovators to use information and services to create new, useful products that are beyond the scope—or budget—of your agency.
* **Speed product development** through improved prototyping and ease of access for internal teams and sister agencies by allowing granular and open access to content. 
* **Build markets** by improving access to government resources like health, economic, energy, education, environmental resources for entrepreneurs to build upon. 

Learn more about the [benefits of APIs](https://pages.18f.gov/API-All-the-X/pages/benefits_of_apis). 

## API Basics  

### Technical Basics

An API is usually a standardized service based on a common protocol (rules for how the service works) and formats (schema for using the service) that are familiar to developers. APIs are, at their most basic, a combination of protocol (the means of interacting with data and services) and format (the model by which the data and services are arranged in order to allow such interaction).    

API protocols are typically either SOAP ([Simple Object Access Protocol](http://en.wikipedia.org/wiki/SOAP)) or REST ([Representational State Transfer](http://en.wikipedia.org/wiki/Representational_state_transfer)). REST is preferred by many because it's based on the familiar http Web protocol.  

API formats are usually either XML ([Extensible Markup Language](http://en.wikipedia.org/wiki/XML)) or JSON ([JavaScript Object Notation](http://en.wikipedia.org/wiki/JSON)). JSON is increasingly popular with developers due to its speed, ease of use, and wide acceptance.  

New APIs are routinely described as RESTful JSON because they follow the REST architectural style and use JSON as its data representation format.

Learn more about [API technical choices](https://pages.18f.gov/API-All-the-X/pages/api_basics)).

### API Types

When considering APIs there are three types of uses. 

* **Public**. An agency makes information and services available to almost anyone to use for building their own applications. These APIs are built on top of public information and services. Applications can be used commercially. Developers can, for example, create a [mashup](http://en.wikipedia.org/wiki/Mashup_(web_application_hybrid)) that uses government data—like [Census block data](http://www.broadbandmap.gov/developer/api/census-api-by-coordinates)—as a supporting part of an application.
* **Private**. Organizations use APIs across offices and divisions to share data to improve access and efficiency. These APIs are built on internal information and services. [Amazon famously required](http://apievangelist.com/2012/01/12/the-secret-to-amazons-success-internal-apis/) all data and functionality to be available ONLY through APIs. This created modular services that could be reused easily and prepared Amazon for innovation, such as easily deploying apps to smartphones.
* **Hybrid**. Some APIs are available both externally and internally. Your organization can limit access to some information to the public and make more available for internal use or to use with specific partners.
It is important to understand these uses and to apply appropriate security, legal, and technical rules, depending on the use.

### API Functions

APIs are mostly either read-only or read-write. A general way to differentiate the two is whether the underlying material is information that is meant to be broadcast (read-only) or a service that is meant to allow a consumer to interact with the government and supply information, such as submitting an online form (read-write). Security considerations will differ just as they do with Web pages (static vs. a system interface). Your IT security team is an important partner in design and deployment.

## How to Start an API Program 

APIs need to provide value to your agency and to developers. The best way to make that happen is to tie an API program to your agency mission.
 
1. **Audit: Investigate what API efforts may already be active at your agency. Assemble a list of the information that your team or agency produces and the services you provide. Decide what material you would like to offer via API. Read more on [auditing APIs](https://pages.18f.gov/API-All-the-X/pages/how_to_get_started_with_apis). 
 
2. **Assemble Components: Coordinate the creation of the API itself. Assemble the related documentation, components, and rollout plan. Test the API and coordinate with stakeholders. Read more on [assembling the components](https://pages.18f.gov/API-All-the-X/pages/how_to_get_started_with_apis#assemble-components).
 
3. **Implement: Release the API to the intended audience, announce through marketing and community channels, and engage interested users. Read more on [implementing the API](https://pages.18f.gov/API-All-the-X/pages/how_to_get_started_with_apis#implement).
 
4. **Track Progress: Monitor usage statistics, make improvements, and continue to engage with developers using the API. Read more on [tracking the progress](https://pages.18f.gov/API-All-the-X/pages/how_to_get_started_with_apis#track-progress).
 
5. **Repeat: Re-evaluate lessons learned with your agency’s Web presence and consider what material next makes sense as an API. Repeat the above steps. Read more on [repeating the process](https://pages.18f.gov/API-All-the-X/pages/how_to_get_started_with_apis#repeat).

## Resources and Tools for Building APIs  

* [Hosted API Tools](https://pages.18f.gov/API-All-the-X/pages/tools)
* [API Standards](https://github.com/WhiteHouse/api-standards)
* [Examples of APIs in Government](https://pages.18f.gov/API-All-the-X/pages/status)
* [API Education Series](https://pages.18f.gov/API-All-the-X/pages/education)
* [Case Studies](https://pages.18f.gov/API-All-the-X/pages/case_study_lists)
* [How to Make APIs—An Overview](https://pages.18f.gov/API-All-the-X/pages/how_to_make_APIs-overview)
* [API Release Kit](https://pages.18f.gov/API-All-the-X/pages/api_release_kit)
* [/Developer Kit](https://pages.18f.gov/API-All-the-X/pages/developer_hub_kit)
* [U.S. Government APIs Listserv](http://groups.google.com/forum/?nomobile=true#!forum/us-government-apis)
* [Recommended Reading](https://pages.18f.gov/API-All-the-X/pages/recommended_reading)

## Common Questions About APIs

* **What is the difference between RSS and an API?**

RSS is typically a subscription model that usually stores at any one time only the most recent entries. By contrast, an API exists to expose the entire content store, regardless of whether it was recently published.    

* **How do APIs fit in with a mobile strategy?**

APIs enable the content and services that they serve to be readily consumed by mobile apps as well as mobile interfaces. Either the agency or third parties are still needed to create one or more of these so that consumers of the information have an interface with which to interact. The task of creating the mobile app or mobile interface is quicker and easier with APIs, almost to the point of there being a pre-requisite. So, if you want to include certain material in the mobile Web presence of your agency, publishing an API of that material is a good first step.    

* **Will I lose control of my content?**

No more than you already do. In regards to public material, third parties that wish to scrape the content already do so, and the creation of APIs does not change that. Through the use of API keys and analytics you can actually maintain more control in many instances, by having a foundation to understand who is using your content, and how they are using it. Through an API terms of service, you then also have recourse to address any third-party use that violates your usage policy.  

* **What about branding?**

Branding is much more than the URL of the content. Many agencies are finding that their brand increases, through savvy use of APIs and by allowing third parties to benefit from dynamic access to their content. Any concerns in regards to agency brand are addressed technologically and through the terms of service.    

* **How does this relate to cloud computing?**  

The growth of cloud computing and APIs in government complement each other—both support more agile development and a more responsive and less expensive infrastructure. However, they can also be viewed independently of each other. The philosophy and technique of APIs function equally well, regardless of whether the host server is housed locally or "in the cloud".    

* **What are the technical considerations for success of APIs?**  

The goal of an API is to provide reliable access to a specific service, to provide certain information or services. The technical considerations are similar to those of a website: uptime, timeliness, and a clear user experience (in this case, for developers).
