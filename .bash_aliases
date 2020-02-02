alias errlog='tail -f /Applications/MAMP/logs/php_error.log'
alias cdsleep='cd /private/var/vm'
alias cdspot='cd ~/Library/Caches/com.spotify.client/Data'
alias cdd='cd ~/Downloads'
alias cddg='cd ~/work/dailygraphics'
alias cddgg='cd ~/work/dailygraphics/src/graphics'
alias gb='git branch'
alias gbd='git branch -d `echo $1`'
alias gp='git push origin master'
alias gpp='git pull origin master'
alias gco='git checkout `echo $1`'
alias gpb='git push origin `echo $1`'
alias gppb='git pull origin `echo $1`'
alias ddb='git checkout dev.db'
alias gds='git diff --stat'
alias gd='git diff'
alias bpa='vi ~/.bash_aliases'
alias lsrecent='ls -ltd $(find .)'
alias sizes='du -d 1 | sort -n'
alias cdw='deactivate; cd ~/work/'
alias dsk="find . -name ".DS_Store" -exec git rm '{}' \;"
alias ppp='curl -X PURGE `echo $1`'
alias dall='deployqa; deployprod'
alias lsh='ls -lth | head'
alias lshh='ls -lth | head -n 20'
alias dqa='deployqa'
alias dprod='deployprod'
alias pq='`^prod^qa`'
alias qp='`^qa^prod`'
# Make the command-line stat command on the mac less janky:
alias stat='stat -x'
alias ssha='ssh -i ~/pempempem.pem ubuntu@ec2-35-165-237-90.us-west-2.compute.amazonaws.com'
alias 3up='cd ../../../'
alias lemon='scp -r `echo $1` mi:~/projects/`echo $1`'
alias test='echo "`echo $1` `echo $1`"'
alias pir='pip install -r requirements.txt'
