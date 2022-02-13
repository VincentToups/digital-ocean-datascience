.PHONY: clean
.PHONY: show

clean:
	rm data-science-basics.html

show: data-science-basics.html
	firefox data-science-basics.html

data-science-basics.html: data-science-basics.md data-science-basics.css
	pandoc data-science-basics.md -o data-science-basics.html --css data-science-basics.css --self-contained --metadata title="Data Science on Digital Ocean (Part 1)"
