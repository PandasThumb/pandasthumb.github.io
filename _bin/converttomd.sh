#!/bin/sh

parallel 'echo {} && perl kwtomd.pl < {} > {.}.md' ::: ../_posts/*.kwickxml
