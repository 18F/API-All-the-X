---
layout: page
title: "Developer Hubs 2"
---


<html>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script>
    $.getJSON( "http://18f.github.io/API-All-the-X/data/developer_hubs.json", function(developer_hubs) {
      $.each(developer_hubs, function(publisher, attributes) {
        document.write("<h2>" + publisher + "</h2>");
        document.write("<a href=\"" + attributes["url"] + "\">" + attributes["url"] + "</a><br />");
      });
    })
    </script>
</html>
