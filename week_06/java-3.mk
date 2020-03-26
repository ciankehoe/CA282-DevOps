java = $(wildcard *.java)

classes = $(java:.java=.class)

install: $(classes)

%.class: %.java
	javac $<

clean:
	rm -f *.class

.PHONY: clean
