all: download build

download:
	spectool -gf -C SOURCES SPECS/logstash.spec

build:
	rpmbuild -ba SPECS/logstash.spec

clean:
	rm -fr RPMS/*
