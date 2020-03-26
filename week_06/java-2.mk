java = $(wildcard *.java)

classes = $(java:.java=.class)

install: $(classes)

%.class: %.java
	javac $<
