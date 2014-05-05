---
layout: page
title: "subpage2 Checklist"

foo: "bar"
ok: '<span style="color:green;font-size:150%">&#x2713;</span>'
fail: '<span style="color:darkred;font-size:150%">&#x2717;</span>'
emdash: '&#x2014;'
rdab: '<span style="color:#eaeaea">&#x300b;</span>'
ldab: ''
---

{{page.ok}} Prior to releasing an existing project to GitHub.com, walk through these 
items and ensure they are addressed.

- **Has PII been identified and removed?**
  - Use [Clouseau](https://github.com/virtix/clouseau) for scanning source code.
    - For an Open Source Release, attach the Clouseau output.
  - If there are images, visually inspect each image to ensure there is no CFPB-specific information.

- **Have security vulnerabilities been identified and remediated?**
  - Use the [OWASP Top 10](https://www.owasp.org/index.php/Top_10_2013)
  - [National Vulnerability Database](http://nvd.nist.gov/)
  - [SANS Swat Checklist](http://www.securingthehuman.org/developer/swat)

- **Are we including any other open source products? If so, is there any conflict with our public domain release?**

- **Is our `TERMS.md` included?**

- **Are instructions for contributing included (`CONTRIBUTING.md`)?**

- **Are installation instructions clearly written in the `README` _and_ tested on a clean machine?**

- **Are all dependencies described in the `README`, `requirements.txt`, and/or `buildout.cfg`?**

- **Are the API docs generated?**

- **Are there unit tests?**

- **If appplicable and possible, is it set up in TravisCI?**

- **Have multiple people reviewed the code?**

- **Is there a screenshot in the `README`, if applicable?**


## Copy this version to paste into a GitHub issue with live checkboxes:

{% highlight text %}
- [ ] **Has PII been removed?**
  - Use [Clouseau](https://github.com/virtix/clouseau) for scanning source code.
  - If there are images, visually inspect each image to ensure there is no CFPB-specific information.
- [ ] **Have security vulnerabilities been remediated?**
- [ ] **Are we including any other open source products? If so, is there any conflict with our public domain release?**
- [ ] **Is our `TERMS.md` included?**
- [ ] **Are instructions for contributing included (`CONTRIBUTING.md`)?**
- [ ] **Are installation instructions clearly written in the `README` _and_ tested on a clean machine?**
- [ ] **Are all dependencies described in the `README`, `requirements.txt`, and/or `buildout.cfg`?**
- [ ] **Are the API docs generated?**
- [ ] **Are there unit tests?**
- [ ] **If applicable and possible, is it set up in TravisCI?**
- [ ] **Have multiple people reviewed the code?**
- [ ] **Is there a screenshot in the `README`, if applicable?**

{% endhighlight %}
