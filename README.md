# My Yard - Deploy apps to a local yard of VMs

NOTICE: This isn't working yet.

The word 'yard' is used synonymously with 'cluster' (a set of instances)
and 'environment' (the description of a set of instances). Probably dubious to
do so, but it's a cute word.

## Installation

Everyone using My Yard, either setting up a new project or joining a team, needs to run the 
following installation steps:

    gem install myyard
    myyard download

The last step will download a 450Mb+ virtualbox image. Yay.

## Usage

To use My Yard for the first time on a project:

    cd /my/rails/or/rack/app
    my setup
    my deploy

To join a team that is using My Yard:

    cd /my/rails/or/rack/app
    my setup
    my deploy # WIP

By default, this will setup VMs for the Rails development environment.
To deploy an application for an alternate environment, say 'production', use:

    my deploy production # WIP

Note, this will build and operate separate VMs from your development environment.

To shut down the VMs for a specific environment:

    my destroy development

You can shut down all your applications' running VMs at any time, from any location:

    my destroy --all # WIP

## License

(The MIT License)

Copyright (c) 2010 Engine Yard LLC

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.