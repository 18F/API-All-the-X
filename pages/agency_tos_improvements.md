---
layout: default
title: Terms of Service Improvements for Agencies
---

This page brings together notes about potential areas for improvement of agency terms of service.  Please add suggestions below.  

The notes here are all drafts and currently works in progress. To see the author of any given piece of text in this document, use GitHub's "blame" tool.


### [White House - We The People Write API](http://www.whitehouse.gov/webform/apply-we-people-write-api-beta)


### [Department of Labor](http://developer.dol.gov/terms-service)*


### [Bureau of Economic Analysis - Commerce](http://www.bea.gov/API/_pdf/bea_api_tos.pdf)*


### [Census Bureau - Commerce](http://www.census.gov/developers/tos/terms.html)*

### [International Trade Administration](http://developer.trade.gov/tos.html)
* [Indemnification Clauses](https://github.com/InternationalTradeAdministration/developerportal/pull/25)

### [Agricultural Marketing Service - USDA](http://search.ams.usda.gov/farmersmarkets/v1/APITOS.html)*


### [Economic Research Service - USDA](http://www.ers.usda.gov/developer/api-terms-of-service.aspx)*


### [National Agriculture Statistics Service](http://quickstats.nass.usda.gov/api)


### [Energy Information Administration](http://www.eia.gov/beta/api/tos.cfm)*


### [Bureau of Justice Statistics - DOJ](http://www.bjs.gov/developer/ncvs/termsofservice.cfm)


### [Office of Justice Programs](http://data.ojp.gov/developer/awards/termsofservice.html)*


### [Federal Emergency Management Agency](http://www.fema.gov/openfema-api-terms-conditions)*


### [Federal Housing Finance Agency](http://www.fhfa.gov/weblink/ToS.pdf)*


### [Federal Motor Carrier Safety Administration](https://mobile.fmcsa.dot.gov/developer/tou.page?cid=1140526)*


### [Federal Railroad Administration](https://safetydata.fra.dot.gov/MasterWebService/Terms.aspx)*


### [General Services Administration](http://www.gsa.gov/portal/content/162631)*


### [Federal Communications Commission](http://www.fcc.gov/developers/api-terms-of-service)*


### [National Institute on Drug Abuse](http://www.drugabuse.gov/developers/nmassist/apiterms)

> NIDA content can be presented anywhere on your Web site.

This is not a requirement even though it is under a heading called "Usage Requirements". It can be safely removed. 

> Do not manipulate or alter the calculation of the screening tool results.

> If the screening tool is embedded alongside other content, please ensure that the content provides related value, is consistent with the NIDA content, and does not harm the integrity of the NIDA content.

The ToS is probably not a good place to regulate downstream use of open information. Furthermore, "manipulate," "alter," "related value," and "integrity" are very subjective terms in the API context, and thus lead to uncertainty from a developer's perspective. 

Generally speaking, downstream controls prohibiting things like "manipulation" of information go against norms in other areas of government publishing. For example, when a Supreme Court opinion is released, there is no ToS, and no requirement that users not modify, prohibit, or misrepresent the information.

> Your application may only send a maximum of 10 requests per second unless you have received prior authorization from NIDA's web team. 

This is good. Though it's always ideal to not have rate limits this low, if rate limits are going to exist, it's always excellent to transparent in what the limits are. It would be nice for a sentence or two that clarifies how the limit is enforced, as well as any tips and tricks that will make it easy for the user to respect the limit.

### [Pillbox API - NIH](http://pillbox.nlm.nih.gov/API-documentation.html)*


### [HealthFinder.gov](http://healthfinder.gov/developer/Term_of_Use.aspx)
* requires developers include this in their _html_:
> <HealthfinderLogo>http://healthfinder.gov/prevention/glmedia/bw_hf_logo.gif</HealthfinderLogo> <HealthfinderUrl>http://healthfinder.gov</HealthfinderUrl>
* "The APIs should be used on demand, rather than be queried and pulled into a separate database." vs. in the Usage Requirements "Use best practices to determine when to use the healthfinder.gov API in real-time versus when to use the API to gather the healthfinder.gov content and store it in a local database."


### [HealthIndicators.gov](http://www.healthindicators.gov/PoliciesAndRegulations/APITermsOfService)*


### [Regulations.gov](http://www.regulations.gov/#!developers;page=termsOfService)*


### [PACER - US Courts](http://www.pacer.gov/cmecf/developer/disclaimer.html)*


### [Sustainable Facilities Tool - GSA](http://sftool.gov/developers/TermsOfUse)*


### [TreasuryDirect.gov](http://www.treasurydirect.gov/webapis/webapisterms.htm)*


### [USA.gov](http://www.usa.gov/About/developer-resources/terms-of-service.shtml)

> Data accessed through USA.gov do not, and should not, include controls over its end use. 

This is a good principle. It really should apply by default to all agency APIs, and need not be stated in the ToS.


### [Go.USA.gov](https://go.usa.gov/api#terms)*


### [My.USA.gov](https://my.usa.gov/terms-of-service)*


### [USASearch](http://search.digitalgov.gov/tos.html)*


### [API.Data.gov](https://api.data.gov/account/terms)

> TO THE EXTENT PERMITTED BY APPLICABLE LAW, YOU AGREE TO INDEMNIFY GSA, AND ITS AFFILIATES, OFFICERS, AGENTS, AND EMPLOYEES AGAINST ANY ACTUAL CLAIM OR DEMAND (BUT EXCLUDING CLAIMS RELATING TO OWNERSHIP OR RIGHTS ASSOCIATED WITH THE DATA), INCLUDING REASONABLE ATTORNEYS' FEES, TO THE EXTENT SUCH CLAIM OR DEMAND RELATES TO THE USE AND DISTRIBUTION OF THE DATA BY YOU. THE DATA ARE PROVIDED BY GSA "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE EXPRESSLY DISCLAIMED. IN NO EVENT SHALL GSA BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER, INCLUDING BUT NOT LIMITED TO CLAIMS ASSOCIATED WITH THE LOSS OF DATA OR PROFITS, WHICH MAY RESULT FROM ANY ACTION IN CONTRACT, NEGLIGENCE OR OTHER TORTIOUS CLAIM THAT ARISES OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THE DATA.


<hr />

# In-Progress Personal Notes on ToS from Alan deLevie

### White House - We The People Write API

The WTP API does not appear to have a ToS. There is a Terms of Participation that applies generally to the WTP program.

### USDA - Agricultural Marketing Service

The Farmers Market Directory API has its own [ToS](http://search.ams.usda.gov/farmersmarkets/v1/APITOS.html).

Section-by-section feedback:

#### Use

> But, as the data owners and/or authoritative source, AMS retains all version control.

I am not sure what this means. The context of the paragraph suggests that a third party publisher of the data is responsible for it, and the USDA AMS is not.

#### Attribution

The ToS requires API users to disclose:

> "This product uses USDA’s National Farmers Market API but is not endorsed or certified by USDA.” 

#### Public Participation

> As part of our ongoing efforts under the Transparency and Open Government Initiative, any feedback and input from members of the public will help contribute to the continued improvement and evolution of our APIs and open data sets.

This is not a term of service. It is a great goal, though. Including an email address or link would serve that goal. It also should probably be removed from the ToS and instead be mentioned somewhere else.

#### Modification or False Representation of Content

> Users of AMS data may not modify or falsely represent content accessed through the AMS website and still attribute the source as AMS or USDA.

The use of "modifying" here is overly broad. Many modifications to data still fall under the banner of faithful representation (rounding numbers, for example). This sentence, in its plain meaning, bars users from making any modification ot the data and citing its source. Moreover, as a potential user of this API, I strongly prefer not to limit my ability to correctly cite sources by contract. Any time and effort I put into this API is potentially wasted if USDA or AMS determines (after the fact) that an attribution violates the ToS. This is especially concerning given the earlier section of the ToS that *requires* attribution.

#### Indemnification

There are several reasons to remove this clause. First, without any amendment, agreement to these ToS (which is triggered from mere use of the API) possibly constitutes a violation of the Anti-Deficiency Act (according to the Federal Acquisition Regulations and a Department of Justice memorandum). Agreement to this indemnficiation by federal employees who do not have contracting authority, though not a violation of the Anti-Deficiency Act (according to the FAR and DOJ), is unenforceable (according to the FAR and DOJ). At minimum, the ToS needs an amendment excempting federal users. Until then, the indemnificatione clause is moot, at best, and a potential precursor to a violation of the Anti-Deficiency Act at worst.

For non-federal users, this clause still poses uneccesary risk to API users. usda.gov and ams.usda.gov do not have ToS and thus no indemnification clause. 

### Bureau of Justice Statistics - DOJ

There is no ToS for BJS or its API and data. There is only the DOJ's main [Legal Policies and Disclaimers](http://www.justice.gov/legalpolicies.htm) page.

### National Institute on Drug Abuse - NIH

I cannot find their APIs or data.

### Healthfinder.gov - HHS

[ToS](http://healthfinder.gov/Developer/Term_of_Use.aspx)

> The APIs should be used on demand, rather than be queried and pulled into a separate database.

This is helpful in a guide, but is not a term of use.

> The healthfinder.gov logo and URL must be displayed as the content source wherever healthfinder.gov content is used. To properly use the healthfinder.gov API, we ask that the following code is embedded wherever healthfinder.gov content appears on your site.

>The logo and URL only need to appear once on a webpage where healthfinder.gov content appears. Please reference healthfinder.gov as the source and provide credit and the link to healthfinder.gov. The URL does not need to be displayed; wrapping the URL around the healthfinder.gov logo is the proper format.

This is onerous on the developer. Moreover, is this even required? Though this appears on a page titled "Terms of Use", "we ask" implies that this is merely a request and not a requirement to comply with the ToS. At minimum, this should be clarified. If it is not a requirement, it should be removed from the ToS and placed elsewhere to avoid confusion and to ensure the all parts of the ToS are germane. 

> Code:
> <HealthfinderLogo>http://healthfinder.gov/prevention/glmedia/bw_hf_logo.gif</HealthfinderLogo> <HealthfinderUrl>http://healthfinder.gov</HealthfinderUrl>

This code is not valid HTML. Thus requiring its use in an HTML page means that developers are required to publish content that breaks the HTML specification.

> The analytics collects: the URL where the content is displayed and how many times the content has been loaded.

It appears that the previous code sample is required to make possible these analytics. Nevertheless, this should not be required. 

#### Usage Requirements

> healthfinder.gov content can be presented anywhere on your website.

This clause is unecessary. ToS need not dictate where on a website content may reside. 

> Do not manipulate or alter the healthfinder.gov content. This is particularly important for the myhealthfinder API, since the myhealthfinder results are evidence-based and require careful maintenance and oversight by the healthfinder.gov team to ensure they are up to date.

While misrepresentation of information, especially health-related, is a serious concern, overly-broad language prohibiting *any* manipulation or alteration means that developers should not alter or manipulate the data in ways that 1) are not misrepresentations of the data, and 2) could be useful. Rounding numbers, for example, is a modification of data. Is this never acceptable?

> If the content is mashed up or presented with other content, please ensure that the content provides related value, is consistent with the healthfinder content, and does not harm the integrity of the healthfinder.gov content.

Providing "value" is highly subjective. This should be recommended (and taught and clarified) in a guide, but should not be a black letter requirement to use the API.

> Use best practices to determine when to use the healthfinder.gov API in real-time versus when to use the API to gather the healthfinder.gov content and store it in a local database.

This is redundant at best, and contradictory, at worst, with the earlier clause that requires that the APIs be used on demand.

### HealthIndicators.gov

[ToS](http://developers.healthindicators.gov/ApiKey/TermsOfService)

 












