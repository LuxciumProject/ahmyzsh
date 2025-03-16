#!/bin/bash

# Total lines: 16

alias wheelr='sudo chgrp -R wheel ./ && sudo chmod -c -R g+r ./'
alias wheelw='sudo chgrp -R wheel ./ && sudo chmod -c -R g+w ./'
alias wheelx='sudo chgrp -R wheel ./ && sudo chmod -c -R g+x ./'
alias wheelrw='wheelr;wheelw'
alias wheelrx='wheelr;wheelx'
alias wheelwx='wheelw;wheelx'
alias wheelrwx='wheelr;wheelw;wheelx'
alias luxciumr='sudo chgrp -R luxcium ./ && sudo chmod -c -R g+r ./'
alias luxciumw='sudo chgrp -R luxcium ./ && sudo chmod -c -R g+w ./'
alias luxciumx='sudo chgrp -R luxcium ./ && sudo chmod -c -R g+x ./'
alias luxciumrw='luxciumr;luxciumw'
alias luxciumrx='luxciumr;luxciumx'
alias luxciumwx='luxciumw;luxciumx'
alias luxciumrwx='luxciumr;luxciumw;luxciumx'
