

## How to configure and edit this page and site

This site is built with [Jekyll](http://jekyllrb.com/), so you should 
have that installed and be familiar with it.


#### Quick Start

1. Fork this repo/site by clicking the ["Fork me on GitHub"](https://github.com/virtix/open-source-program-template)
ribbon in the upper right-hand corner.
2. Make sure the default branch is set to ```gh-pages```. This can be found in your [project's settings](https://github.com/YOUR_USERNAME/open-source-program-template/settings)
3. Navigate to [http://YOUR_USERNAME.github.io](http://YOUR_USERNAME.github.io)
    You should see the un-edited micro-site.
4. Navigate to [prose.io](http://prose.io) and log in with your GitHub account
5. Find the ```opensource-program-template``` and use prose.io to edit files and create content.


#### Editing this page

Edit the ```index.md``` file in your project root to add welcome content and
any other data you want. 

**Note**: Make sure to change the ```title: ...```.



#### Removing the "Fork me on GitHub" ribbon

Edit the ```_layouts\default.html``` file. The ribbon code is on 
about line #23. Just replace it or delete it.


#### Changing information about your organization

Navigate to the file ```data/meta.yml```.  This is a data file and contains
basic information about your organization&mdash;name, address, point of contact, etc.


{% highlight yaml %}
org_name:  YOUR ORGANIZATION NAME
org_abbrev: Y.O.N.
address:
 street: 1000 Main Street
 suite: 
 city: Washington
 state: D.C.
 zip: 20000
point_of_contact: Thomas Jefferson 
...
{% endhighlight %}


#### Changing the site's main title (default: A Government Open Source Program)

Navigate to the file ```_config.yml``` in your project's root directory. Change the
```name: ``` element on line 18 or so to your desired site's name.

{% highlight yaml %}
# Your Programs's Name
name: A Government Open Source Program
subtitle: A set of templates and artifacts to support open source programs 
{% endhighlight %}


#### Changing the site's logo

Navigate to the file ```data/meta.yml``` and change the ```logo_url``` to a valid 
location to your logo. This can either be an HTTP URL or a new local image file.

{% highlight yaml %}
logo_url: /assets/img/USA_flag_icon.png
{% endhighlight %}



#### Editing content

There are two types of content: pages and posts (or news items). Posts are discussed next.

To edit existing pages, navigate to the ```pages``` directory in your project's root. Edit
the files in your editor of choice.  These are written in [markdown](https://daringfireball.net/projects/markdown/).

If your site is hosted at GitHub using [GitHub Pages](http://pages.github.com/) you can edit the content
directly or you can use [Prose.io](http://prose.io/).


#### Creating News Items 

To create a _new_ post, copy the ```_posts/post-template.md``` file to the same directory and use this
file naming convention: ```YYYY-MM-DD-Your-Post-Title.md```.  Edit that file accordingly and it 
will automatically be displayed on the the [news page](news.html).  


#### Adding new pages

Copy the ```pages/page_template.md``` file to ```pages/your_file_name.md``` and add content as desired.



#### Adding/Changing Left-hand Navigation

In your project's root directory, open ```_config.yml```.  Towards the bottom there is a 
```navigation:``` node. Each child in the node represents a new navigation item.  Each item
has text,url, and internal properties.  The ```text``` property is the text that is displayed 
on the page. The ```url``` property is the target destination. 

#### Working with GitHub pages

Using Jekyll and GitHub pages allows you to easily manage and publish content. See
[GitHub](https://help.github.com/articles/using-jekyll-with-pages) for more information.


#### Working with [prose.io](https://github.com/prose/prose/wiki/Getting-Started)

Prose.io is an open source tool for managing content on GitHub.
Use it to create, edit, or delete files in your project.  Prose.io is _Jekyll-aware_
so, it adds a few features if you are using Jekyll. These included the ability to 
save _drafts_, and _publish_ or _unpublish_ posts.

If you publish this using GitHub Pages, you can easily allow contributions.  Notice the
the {% include prose_edit_url.html %} link in the left hand navigation.  You can customize this
by editing the ```_config.yml``` file. Update the ```# Prose.io editing``` section with 
your GitHub information:

{%highlight yaml%}
#Prose.io editing info
repo_name: open-source-program-template
branch: gh-pages
#GitHub organization name *or* username
gh_org: virtix
prose_url: http://prose.io
site_url: http://if.io/open-source-program-template
media: assets/img
{% endhighlight %}


To remove the edit on prose.io link, remove the following lines from the
```_includes/sidebar.html``` file:
{% highlight html %}{% raw %}<!-- Prose.io edit link -->
 <li>{% include prose_edit_url.html %}</li>{% endraw %}
{% endhighlight %}

