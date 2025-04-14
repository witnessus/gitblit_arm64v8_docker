#!/bin/bash

if [ ! -f /opt/gitblit-data/gitblit.properties ]; then
	cp -Rf /opt/gitblit-data-initial/* /opt/gitblit-data/
fi

if [ -z "$JAVA_OPTS" ]; then
	JAVA_OPTS="-server -Xmx1024m"
fi

chown -Rf gitblit:gitblit /opt/gitblit-data

exec sudo -u gitblit `which java` $JAVA_OPTS -Djava.awt.headless=true -cp 'gitblit.jar:ext/*' com.gitblit.GitBlitServer --baseFolder /opt/gitblit-data
