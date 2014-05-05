---
layout: default
title: "Open Source Policy"
---

{% comment %}

This uses the data file _data/meta.yml.  Replace your organization name and other information there.
It will automatically be reflected here.

{% endcomment %} 

From the CFPB[^1]

1. USE OF EXTERNAL OPEN SOURCE SOFTWARE
---

a) "Open Source Software" (OSS) is software that allows its recipients to modify and redistribute
the source code; as such, "open source" is a copyright and distribution framework and makes no
implications regarding technical support or indemnification. In almost all cases, OSS meets
the definition of "commercial computer software" and shall be given appropriate statutory
preference in accordance with 41 USC 264B (reference (b)) (see also FAR 2.101(b), 12_1.html
12.000, 12.101 (reference (c))).



b) Executive agencies, including {{site.data.meta.org_name}}, are required to conduct market research when preparing for
 the procurement of products or services by 41 USC Sec. 253a (reference (e)) (see also FAR
 10.001. Market research for software should include OSS.

 
> a. There are several positive aspects of OSS that should compel {{site.data.meta.org_name}} to seek out OSS when
     conducting market research on software for Bureau-wide use:
  
>> i. Publicly available source code enables continuous and broad peer review that
ensures rigorous security and reliability. Specifically, this process
encourages the identification and elimination of defects that might
otherwise go unrecognized by a more limited core development team.

>> ii. The unrestricted ability to modify software source code enables {{site.data.meta.org_name}} to
respond more rapidly to constantly changing missions and markets, and is
critical to {{site.data.meta.org_name}}'s ability to create new tools and keep pace with industry.
  
>> iii. Using OSS instead of proprietary software may reduce reliance on a
particular software developer or vendor. OSS can be operated and maintained
by multiple vendors, thus reducing barriers to entry and exit.
  
>> iv. Open source licenses do not restrict who can use the software or the
endeavors in which the software can be used. This allows {{site.data.meta.org_name}} to endlessly
reuse existing OSS-based products to satisfy new needs quickly and secure
substantial cost savings for the Bureau.
  
>> v. Since the monetary cost of OSS typically lies in support and maintenance as
opposed to licensing, OSS can provide a cost advantage in situations where
many copies of the software may be required, and can mitigate risk of cost
growth due to licensing in situations where the total number of users may
not be known in advance.
  
>> vi. By sharing the responsibility for maintenance of OSS with other users, {{site.data.meta.org_name}}
can benefit by reducing the total cost of ownership for software,
particularly compared with software for which {{site.data.meta.org_name}} has sole responsibility
for maintenance (e.g., GOTS).

>> vii. OSS is particularly suitable for rapid prototyping and experimentation,
where the ability to "test drive" the software with minimal costs and
administrative delays can be important.


> b. While these considerations may be relevant, they may not be the overriding drivers to
any decision about software. Ultimately, the software that best meets the needs and
mission of {{site.data.meta.org_name}} should be used, regardless of whether the software is open source.


c) The use of any software without appropriate maintenance and support presents an information
assurance risk. Before approving the use of software (including OSS), system/program managers,
and ultimately Designated Approving Authorities (DAAs), must ensure that the plan for software
support (e.g., commercial or Government program office support) is adequate for mission need.


d) It is important to understand both the specifics of the open source license in question and
 how {{site.data.meta.org_name}} intends to use and redistribute any Bureau-modified OSS. There is a misconception
 that the Government is always obligated to distribute the source code of any modified OSS to
 the public, and therefore that OSS should not be integrated or modified for use in sensitive
 {{site.data.meta.org_name}} systems. In contrast, many open source licenses permit the user to modify OSS for
 internal use without being obligated to distribute source code to the public. However, if the
 user chooses to distribute the modified OSS outside the user's organization (e.g., a
 Government user distributes the code outside the Government), then some OSS licenses (such as
 the GNU General Public License) do require distribution of the corresponding source code to
 the recipient of the software.


e) When contracting developer services, {{site.data.meta.org_name}} will encourage vendors to use open source technology
  wherever possible, for the reasons cited in a)i-vii above.

f) In order to facilitate the auditing of {{site.data.meta.org_name}}'s software catalog, the Technology & Innovation
  office will use a source code analysis tool to index its open source assets and their
  respective licensing obligations.


2. REDISTRIBUTION OF {{site.data.meta.org_name}} CODE
--

a) Software source code written entirely by {{site.data.meta.org_name}} staff, and by contractors who are developing
   software on behalf of {{site.data.meta.org_name}}, is by default a public domain work.


b) Software source code previously released under an open source license and then modified by
   {{site.data.meta.org_name}} staff is considered a "joint work" (see 17 USC § 101); it is partially copyrighted,
   partially public domain, and as a whole is protected by the copyrights of the non-government
   authors and must be released according to the terms of the original open-source license.


c) All source code as defined in 2)a and 2)b above must be catalogued and shared with the general
   public via a highly visible, easily accessible online source code community that facilitates
   the code’s reuse. Source code shall not be released if any of the following conditions are
   met:

> a. The author of the code in question determines that the code is too crude to merit
distribution or provide value to the broader community.

> b. The Government does not have the rights to reproduce and release the item. The
Government has public release rights when the software is developed by Government
personnel, when the Government receives "unlimited rights" in software developed by a
contractor at Government expense, or when pre-existing OSS is modified by or for the Government.

> c. The public release of the item is restricted by other law or regulation, such as the
Export Administration Regulations or the International Traffic in Arms Regulation.
        
> d. {{site.data.meta.org_name}} cybersecurity staff determine that the public release of such code would pose an
unacceptable risk to {{site.data.meta.org_name}}'s operational security.

----


[^1]: CFPB, [Source Code Policy](https://raw.github.com/cfpb/source-code-policy/master/cfpb-source-code-policy.txt)


