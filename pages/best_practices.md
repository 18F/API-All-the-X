---
layout: page
title: "Best Practices"
authors: "Gray Brooks"

---

There are several collections of best practices for API producers, each of which is worth taking to heart and applying to any government program.  


* If a Terms of Service is included with the API, include a notification system that developers sign up for updates.  [[Note](https://github.com/GSA/API-Resources/issues/3)]
* Include one or more applications that your team builds on top of the API (mashups or a data explorer) that shows that the agency is re-using the API itself and to show an example of how to build on it.  


### Make a Hub
* Create a central developer hub with a path to each of your APIs and all related resources.
* Make your hub findable by using a common URL:  www.agency.gov/developer
 * The url of www.agency.gov/developers should also work.  
* Every API in your central hub should have a homepage with  links to all of its related resources.
* Offer clear and user friendly navigation throughout the developer hub.  

### Provide good documentation  
* API documentation should be in web pages, not a PDF or a Word Document.
* Provide interactive documentation such as Swagger or I/O Docs.
* Provide consistent layout, structure, design, and resources for each set of API documentation.
* Highlight the API endpoint and example URLs early so that developers can jump right in!  

### Communicate with your developers  
* Plain language helps everyone – beginners and experts.  Ask yourself: Would someone who is new to our agency’s work understand this?
* Give people an overview: what the data is, what you can do with it, how to get started
* Avoid acronyms.
* If you require API keys in order to interact with the end point, be sure to allow instant registration.  If developers have to wait–even minutes–before they can interact with the data, they will go elsewhere.
* Provide a means for developers to sign up for updates or see the latest news for these APIs.  

### Don’t just tell them, show them  
* Include plenty of examples (and go ahead and hyperlink them for convenience). Offer code samples and examples of applications that consume the API.
* Share code samples, SDKs, and other developer resources through your agency’s GitHub account.
* Include JSON support.  Offering JSONP or CORS support also goes a long way to encouraging re-use on third party websites.
* If API returns are lengthy, offer pagination.
