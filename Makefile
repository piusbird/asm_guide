SRCFILES := $(wildcard *.md)
PROJDIR :=  out
OUTFILES := index.html intro.html quickstart.html syscalls.html tools.html copyright.html
.PHONY: all
all: site $(OUTFILES)
site:
	mkdir -pv $(PROJDIR)/assets/
	cp -rv bootstrap386/* $(PROJDIR)/assets


%.html: %.md 
	pandoc --template tmpl.html --toc -o $(PROJDIR)/$@ $<

clean:
	rm -rf $(PROJDIR) || true
