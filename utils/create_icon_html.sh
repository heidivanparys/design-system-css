#!/usr/bin/env bash

# Generates a piece of HTML code that lists all the available icons

echo '<ul class="ds-grid icon-list">' > icons.html

for i in ../assets/icons/*.svg; do
  echo "<li class=\"icon\"><span class=\"ds-icon-${i:16:(-4)}\"></span><code>&lt;span class=\"ds-icon-${i:16:(-4)}\">&lt;/span></code></li>" >> icons.html
done

echo "</ul>" >> icons.html
echo "HTML snippet generated in icons.html"