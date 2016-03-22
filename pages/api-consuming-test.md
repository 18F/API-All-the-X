---
layout: page
title: "Consuming an API (Under Construction)"
---






$.getJSON('https://www.healthcare.gov/glossary/childrens-health-insurance-program-chip.json', function(d) {
    $('h1').html(d.title);
    $('#content').html(d.content);
});
