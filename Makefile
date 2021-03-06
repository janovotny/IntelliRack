CC=gcc
CFLAGS=-g
LDFLAGS=-lm
OBJS=$(patsubst %.c,%.o,$(wildcard *.c))
SUB=RPi

all: doc failsafe $(OBJS)
	$(foreach var,$(SUB),cd $(var)&&make;)

failsafe: .git/HEAD
	git add .
	git commit -a -m"build" 
	git checkout makebuild || git checkout -b makebuild
	git checkout c53430c1bd
	git merge --ff master
	rm -rf doc
	echo "doc/">>.gitignore

%.o:%.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -c -o $@ 
	
clean: .git/HEAD
	git checkout -f master

doc: .git/HEAD
	rm -rvf ./doc
	robodoc --src ../IntelliRack/ --doc ./doc/ --multidoc --html --cmode --no_subdirectories --footless --index --toc --syntaxcolors --sectionnameonly --sections --source_line_numbers

com: .git/HEAD
	git rebase --autosquash -i HEAD~`git status | sed -n -e 's/.*by \([0-9]*\).*/\1/p'`
	git commit -a --amend
	git push
