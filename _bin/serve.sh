#!/bin/sh

config=_config.yml
if [ -f _config_local.yml ]; then
	config=${config},_config_local.yml
fi

jekyll serve --config $config --watch --incremental

#--limit_posts 5
