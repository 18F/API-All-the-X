---
layout: page
title: "Sample API Requirements"
---

The below is a set of requirements that can be applied to a new API project.  

### Design Requirements

* REST Inspired (a.k.a. Not SOAP)
* JSON
* Use [api.data.gov](http://api.data.gov/about).  
* Create an endpoint that can scale to all future agency use (e.g. https://api.agency.gov/name_of_this_api).  If this already exists, design to be in sync with it to the same end.   
* Allow key-less access to the API so developers can quickly begin looking at the returns.

### Documentation Requirements
* HTML - No Word documents or PDFs
* Interactive Documentation
* Fork and repurpose [CFPB's API documentation](https://pages.18f.gov/API-All-the-X/pages/developer_hub_templates/) for this API's documentation. 

### Process Requirements
* Include a beta testing phase.
* Conduct an [API Usability session](https://pages.18f.gov/API-Usability-Testing/) during the pre-production phase.
* Create a public repository in the agency's GitHub account that will be used for managing the project, including:
   * Project Roadmap
   * Issue Tracker used by staff for development of the API as well as for bug-reporting and other engagement with external users.  
   * Changelog
* In the design phase, publish the api design as well as draft documentation in this GitHub repository and ask for public feedback.  
* Allow bulk download of the underlying dataset.


### Other Requirements
* Ensure clear, informative errors. 
* Obey HTTP rules.  
* Don't make up custom terms and variables.  
* Adopt this [model terms of service](https://github.com/GSA/API-Resources/tree/master/developer_tos#readme).  
* Plan to dogfood this API.   
* Include or plan for Write access.  
* Apply each of the 18F [API Standards](https://github.com/18F/api-standards).

