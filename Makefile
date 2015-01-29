all: display-manager

display-manager: display-manager.c
	gcc `pkg-config --cflags --libs gtk+-3.0` -Wall -o $@ $^

.PHONY: clean

clean:
	rm -f display-manager
