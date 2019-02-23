#
# Makefile for swig-example
#
all: usage
usage:
	@echo "make [edit|git]"

edit-readme er:
	vi README.md

edit-libwebrtc el:
	vi libwebrtc.md

edit-make-go emg:
	vi Makefile.flutter-go

#------------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [update|login|tag|status]"
	@echo ""

git-update gu:
	git add Makefile* *.md example/
	git commit -m "initial commit"
	#git commit -m "update commentaries"
	#git commit -m "rename /reference into /code"
	git push -u origin master 

git-remove gr:
	git rm -r <directory>
	git commit -m "Remove duplicated directory"
	git push origin master

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v0.0.3
	git push --tags

git-status gs:
	git status
	git log --oneline -5
# ---------------------------------------------------------------------------

